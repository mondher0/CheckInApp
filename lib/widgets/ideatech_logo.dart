import 'package:check_in_app/core/app_asset.dart';
import 'package:flutter/material.dart';

class IdeatechLogo extends StatelessWidget {
  const IdeatechLogo({super.key, this.height = 150});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAsset.ideatech,
      height: height,
    );
  }
}
