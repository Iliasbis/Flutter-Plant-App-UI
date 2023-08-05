// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:plant_app_ui/Pages/shopping_card.dart';

class favorite extends StatelessWidget {
  const favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
                Text(
                  "Search",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade300,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.mic),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.list_alt_rounded,
                  color: Colors.teal,
                  size: 45,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  children: [
                    shopping_card(
                      title: "Aleoe Vera",
                      prix: 20.00,
                      pic: "lib/image/plant1.png",
                    ),
                    shopping_card(
                      title: "Ageratum ",
                      prix: 25.00,
                      pic: "lib/image/plant2.png",
                    ),
                    shopping_card(
                      title: "Red olagoma",
                      prix: 20.00,
                      pic: "lib/image/plant3.png",
                    ),
                    shopping_card(
                      title: "Mostera",
                      prix: 20.00,
                      pic: "lib/image/plant4.png",
                    ),
                    shopping_card(
                      title: "warda",
                      prix: 29.00,
                      pic: "lib/image/vase.png",
                    ),
                    shopping_card(
                      title: "Red olagoma",
                      prix: 20.00,
                      pic: "lib/image/plant3.png",
                    ),
                    shopping_card(
                      title: "Mostera",
                      prix: 20.00,
                      pic: "lib/image/plant4.png",
                    ),
                    shopping_card(
                      title: "Flower",
                      prix: 10.00,
                      pic: "lib/image/plant2.png",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
