<<<<<<< HEAD
import 'package:check_in_app/models/participant.dart';
=======
>>>>>>> f9bbb43ea6c4c36dd1884a3f22a538b7694e63fc
import 'package:check_in_app/providers/participants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/app_asset.dart';
import '../widgets/custom_scaffold.dart';
import '../widgets/ideatech_logo.dart';

class CheckListScreen extends StatelessWidget {
  const CheckListScreen({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    final participants = Provider.of<Participants>(context, listen: false);
    final arg = ModalRoute.of(context)!.settings.arguments as String;

    String getPageName(String arg) {
      switch (arg) {
        case 'w1':
          return 'Building a successful brand';
        case 'w2':
          return 'Motion design and visual elements in a business context';
        case 'w3':
          return 'The requirements for your business promotion';
        case 'w4':
          return 'Salesforce: the global leader CRM';
        default:
          return 'IdeaTech';
      }
    }

    List<Participant> listToShow(String arg) {
      switch (arg) {
        case 'w1':
          return participants.w1;
        case 'w2':
          return participants.w2;
        case 'w3':
          return participants.w3;
        case 'w4':
          return participants.w4;
        default:
          return participants.ideaTechParticipants;
      }
    }

=======
    final participants = Provider.of<Participants>(context);
>>>>>>> f9bbb43ea6c4c36dd1884a3f22a538b7694e63fc
    return SafeArea(
      child: CustomScaffold(
        body: Column(
          // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 50,
                ),
              ),
            ),
            Row(
              children: [
                const Spacer(),
                const IdeatechLogo(height: 100),
                Expanded(child: Image.asset(AppAsset.shapeOne, height: 70)),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              'LIST OF\nCHECKED "${getPageName(arg)}"',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  // color: const Color(0xB5000000),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xB5000000),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
<<<<<<< HEAD
                child: FutureBuilder(
                  future: participants.fetchParticipants(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return const Center(child: Text('Something went wrong'));
                    }
                    return ListView.builder(
                      itemCount: listToShow(arg).length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 30,
                          ),
                          child: Text(
                            '${participants.ideaTechParticipants[index].firstName} ${participants.ideaTechParticipants[index].familyName}',
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
=======
                child: ListView.builder(
                  itemCount: participants.participants.length,
                  itemBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 30,
                      ),
                      child: Text(
                        'ABDOUNE Salim',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
>>>>>>> f9bbb43ea6c4c36dd1884a3f22a538b7694e63fc
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
