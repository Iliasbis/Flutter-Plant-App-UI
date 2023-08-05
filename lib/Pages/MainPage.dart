// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plant_app_ui/Pages/cart.dart';
import 'package:plant_app_ui/Pages/categori_card.dart';
import 'package:plant_app_ui/Pages/favorite.dart';
import 'package:plant_app_ui/Pages/profile.dart';

import 'home.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // const MainPage({super.key});
  int selectedindex = 0;

  void changePage(index) {
    setState(() {
      selectedindex = index;
    });
  }

  List<Widget> Pages = [
    home(),
    favorite(),
    cart(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: changePage,
        currentIndex: selectedindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_rounded),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      backgroundColor: Colors.white,
      body: Pages[selectedindex],
    );
  }
}
