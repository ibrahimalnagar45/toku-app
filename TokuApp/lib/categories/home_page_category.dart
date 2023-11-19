import 'package:flutter/material.dart';
 class homepagemainpart extends StatelessWidget {
  homepagemainpart({required this.title, required this.color, this.ontap});
  final String title;
  final Color color;
  Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.ontap,
      child: Container(
        height: 90,
        alignment: Alignment.centerLeft,
        color: color,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            title,
            style: const TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
