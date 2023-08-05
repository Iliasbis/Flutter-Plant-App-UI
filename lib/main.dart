import 'package:flutter/material.dart';
import 'package:plant_app_ui/Pages/MainPage.dart';
import 'package:plant_app_ui/Pages/favorite.dart';
import 'package:plant_app_ui/account/Log_in.dart';
import 'package:plant_app_ui/account/creat_account.dart';
import 'homePage.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: homePage(),
    );
  }
}
