import '../widgets/custom_button_worshop.dart';
import 'package:flutter/material.dart';

import '../core/app_asset.dart';

import '../widgets/custom_scaffold.dart';
import '../widgets/ideatech_logo.dart';

class SelectWorkShopScreen extends StatelessWidget {
  const SelectWorkShopScreen({super.key});

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
                  Navigator.of(context).pushNamed('/check-list-screen', arguments: 'w1');
                },
                child: const CustomButtonWorkShop(
                  text: 'Building a successful brand',
                  size: 15,
                )),
            const SizedBox(height: 30),
            InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/check-list-screen', arguments: 'w2');
                },
                child: const CustomButtonWorkShop(
                  text:
                      'Motion design and visual elements in a business context',
                  size: 15,
                )),
            const SizedBox(height: 30),
            InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/check-list-screen', arguments: 'w3');
                },
                child: const CustomButtonWorkShop(
                  text: 'The requirements for your business promotion',
                  size: 15,
                )),
            const SizedBox(height: 30),
            InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/check-list-screen', arguments: 'w4');
                },
                child: const CustomButtonWorkShop(
                  text: 'Salesforce : the global leader CRM',
                  size: 15,
                )),
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
