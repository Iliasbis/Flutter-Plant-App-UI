import 'package:flutter/material.dart';

class card extends StatelessWidget {
  final Color color;
  final Color textcolor;
  final String text;
  const card({
    Key? key,
    required this.color,
    required this.textcolor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        height: 20,
        width: 80,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textcolor,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
