// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:plant_app_ui/Pages/shopping_card.dart';

import 'categori_card.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(2, 2),
                        ),
                      ],
                      shape: BoxShape.circle,
                      color: Colors.grey[100],
                    ),
                    child: Icon(
                      Icons.search,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.teal[200],
                ),
                height: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Get",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "50% OFF",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "26 | septembre",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("lib/image/vase.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 30,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        card(
                          color: Colors.teal,
                          text: "Popular",
                          textcolor: Colors.white,
                        ),
                        card(
                          color: Colors.grey.shade200,
                          text: "indor",
                          textcolor: Colors.grey.shade600,
                        ),
                        card(
                          color: Colors.grey.shade200,
                          text: "Outdoor",
                          textcolor: Colors.grey.shade600,
                        ),
                        card(
                          color: Colors.grey.shade200,
                          text: "office",
                          textcolor: Colors.grey.shade600,
                        ),
                        card(
                          color: Colors.grey.shade200,
                          text: "Gradine",
                          textcolor: Colors.grey.shade600,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
