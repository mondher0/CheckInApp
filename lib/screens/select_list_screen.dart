import 'package:check_in_app/core/app_asset.dart';
import 'package:check_in_app/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';

import '../widgets/cusotm_button.dart';
import '../widgets/ideatech_logo.dart';

class SelectListScreen extends StatelessWidget {
  const SelectListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
            const SizedBox(height: 20),
            const IdeatechLogo(),
            const SizedBox(height: 30),
            const Text(
              'YOU WANT TO CHECK',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 30),
         
           
            InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/select-worshop-screen');
                },
                child: const CustomButton(text: 'WORKSHOP P',size: 24,)),
            const SizedBox(height: 30),
            InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/check-list-screen', arguments: 'IdeaTech');
                },
                child: const CustomButton(text: 'IDEATHON P', size: 24,)),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(AppAsset.shapeThree, width: 80),
            ),
          ],
        ),
      ),
    );
  }
}
