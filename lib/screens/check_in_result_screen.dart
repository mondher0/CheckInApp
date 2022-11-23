import 'package:check_in_app/models/participant.dart';

import '../widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import '../core/app_asset.dart';
import '../widgets/custom_text_style.dart';

class CheckInResultScreen extends StatelessWidget {
  const CheckInResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isLarge = MediaQuery.of(context).size.height > 750;
    final participant =
        ModalRoute.of(context)!.settings.arguments as Participant;
    final name = '${participant.firstName} ${participant.familyName}';
    final role = participant.role;
    final training = participant.trainingFormatted;

    return SafeArea(
        child: CustomScaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: Navigator.of(context).pop,
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 50,
                  color: Colors.black,
                ),
              ),
              Image.asset(AppAsset.shapeThree, width: 70),
            ],
          ),
          Image.asset(AppAsset.bytecraftText, height: 40),
          CustomTextStyle(
            'Welcome\n$name\nyou are in',
            fontSize: isLarge ? 40 : 30,
          ),
          Image.asset(
            AppAsset.ideatechYellow,
            height: isLarge ? 250 : 160,
          ),
          const SizedBox(height: 10),
          const CustomTextStyle('As'),
          const SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color(0xff114FEF),
                    blurRadius: 50,
                    spreadRadius: 1,
                    offset: Offset(5, 5)),
              ],
            ),
            child: Text(
              role,
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 2),
            ),
          ),
          const SizedBox(height: 20),
          if (training != null) Text(training),
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(AppAsset.shapeOne, width: 60),
          ),
        ],
      ),
    ));
  }
}
