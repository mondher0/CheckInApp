import 'package:check_in_app/core/app_asset.dart';
import 'package:check_in_app/core/app_color.dart';
import 'package:check_in_app/widgets/cusotm_button.dart';
import 'package:check_in_app/widgets/custom_scaffold.dart';
import 'package:check_in_app/widgets/floating_list_button.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:flutter/material.dart';

import '../providers/participants.dart';
import '../widgets/ideatech_logo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var qrStr = "";
  @override
  Widget build(BuildContext context) {
    final participants = Provider.of<Participants>(context, listen: false);

    Future<void> scanQr() async {
      try {
        final nav = Navigator.of(context);
        final qrValue = await FlutterBarcodeScanner.scanBarcode(
            '#2A99CF', 'Cancel', true, ScanMode.QR);
        showDialog(
          barrierDismissible: true,
          context: context,
          builder: (context) {
            return const AlertDialog(
              backgroundColor: Colors.transparent,
              content: Center(
                  child: CircularProgressIndicator(color: AppColor.yellow)),
            );
          },
        );
        final addedParticipant = await participants.addParticipant(qrValue);
        nav.pop();
        if (mounted && addedParticipant != null) {
          nav.pushNamed('/check-in-result-screen', arguments: addedParticipant);
        }
      } catch (e) {
        setState(() {
          qrStr = 'unable to read this';
        });
      }
    }

    return SafeArea(
      child: CustomScaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          children: [
            const IdeatechLogo(),
            const SizedBox(height: 30),
            Image.asset(AppAsset.qr, height: 200),
            const SizedBox(height: 30),
            InkWell(
                onTap: scanQr,
                child: const CustomButton(
                  text: 'SCAN',
                  size: 24,
                )),
          ],
        ),
        floatingActionButton: FloatingListButton(onPressed: () {
          Navigator.of(context).pushNamed('/select-list-screen');
        }),
      ),
    );
  }

  Future<void> main() async {
    await SentryFlutter.init(
      (options) => options.dsn = qrStr,
      appRunner: () => runApp(const HomeScreen()),
    );

    // or define SENTRY_DSN via Dart environment variable (--dart-define)
  }
}
