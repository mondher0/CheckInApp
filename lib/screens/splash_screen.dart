import 'package:flutter/material.dart';
import '../core/app_asset.dart';
import '../widgets/custom_scaffold.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(body: 
    Center(
      child: Image.asset(AppAsset.bytecraft),
      

      
    )
    
    
    );
  }
}