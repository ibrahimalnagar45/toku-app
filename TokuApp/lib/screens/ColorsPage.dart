import 'package:businesscard/Models/Colors.dart';
import 'package:businesscard/categories/ColorsCategory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class COLORSPAGE extends StatelessWidget {
  const COLORSPAGE({super.key});
  final List<ColorsModel> color = const [
    ColorsModel(
        image: 'assets/images/colors/color_black.png',
        jpname: 'Burakku',
        enname: 'Black',
        sound: "black.wav"),
    ColorsModel(
        image: 'assets/images/colors/color_white.png',
        jpname: 'Shiroi',
        enname: 'White',
        sound: "white.wav"),
    ColorsModel(
        image: 'assets/images/colors/color_brown.png',
        jpname: 'Chairo',
        enname: 'Brown',
        sound: "brown.wav"),
    ColorsModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpname: 'Hokori Ppoi Kirro',
        enname: 'Dusty Yellow',
        sound: "dusty yellow.wav"),
    ColorsModel(
        image: 'assets/images/colors/color_gray.png',
        jpname: 'Gure',
        enname: 'Grey',
        sound: "gray.wav"),
    ColorsModel(
        image: 'assets/images/colors/color_green.png',
        jpname: 'Midori',
        enname: 'Green',
        sound: "green.wav"),
    ColorsModel(
        image: 'assets/images/colors/color_red.png',
        jpname: 'Aka',
        enname: 'Red',
        sound: "red.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 13, 95, 106),
      appBar: AppBar(
        title: const Text('Colors',
            style: TextStyle(fontSize: 25, color: Colors.black)),
        backgroundColor: const Color.fromARGB(255, 113, 231, 151),
      ),
      body: ListView.builder(
          itemCount: color.length,
          itemBuilder: (context, index) {
            return ColorsItem(color: color[index]);
          }),
    );
  }
}
