import 'package:check_in_app/providers/participants.dart';
import 'package:check_in_app/screens/check_in_result_screen.dart';
import 'package:check_in_app/screens/check_list_screen.dart';
import 'package:check_in_app/screens/home_screen.dart';
import 'package:check_in_app/screens/select_workshop_screen.dart';
import 'package:provider/provider.dart';
import './screens/select_list_screen.dart';

import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Participants>(
      create: (context) => Participants(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        fontFamily: 'bytecraft',
      ),
      home:const  HomeScreen(),
      routes: {
        '/select-list-screen':(context) => const SelectListScreen(),
        '/check-list-screen':(context) => const CheckListScreen(),
        '/select-worshop-screen':(context) => const SelectWorkShopScreen(),
        '/check-in-result-screen':(context) => const CheckInResultScreen(),

      },
    ),
    );
  }
}

