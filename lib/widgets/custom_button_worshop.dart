import 'package:check_in_app/core/app_color.dart';
import 'package:flutter/material.dart';

class CustomButtonWorkShop extends StatelessWidget {
  const CustomButtonWorkShop({
    Key? key,
    required this.text,
    required this.size,
    this.isColorInvert = false,
  }) : super(key: key);

  final String text;
  final bool isColorInvert;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
          decoration: BoxDecoration(
            color: isColorInvert ? AppColor.yellow : AppColor.blue,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: isColorInvert ? AppColor.blue : AppColor.yellow,
                spreadRadius: 0,
                blurRadius: 0,
                offset: const Offset(5, 4), // changes position of shadow
              ),
            ],
          ),
          constraints: const BoxConstraints(maxWidth: 250, maxHeight: 70),
          alignment: Alignment.topCenter,
          child: Text(
            text,
            style: TextStyle(
              fontSize: size,
              fontWeight: FontWeight.w800,
              color: isColorInvert ? AppColor.blue : AppColor.yellow,
            ),
          ),
        ),
      ],
    );
  }
}
