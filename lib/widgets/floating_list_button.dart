import 'package:check_in_app/core/app_asset.dart';
import 'package:check_in_app/core/app_color.dart';
import 'package:flutter/material.dart';

class FloatingListButton extends StatelessWidget {
  const FloatingListButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: AppColor.blue.withOpacity(.4),
      ),
      child: Image.asset(
        AppAsset.list,
        height: 60,
      ),
    );
  }
}
