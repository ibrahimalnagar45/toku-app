import 'package:businesscard/Models/number_model.dart';
import 'package:flutter/material.dart';
import 'package:businesscard/categories/Numbers_category.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Number> number = const [
    // all the numbers from 1 to 1o informations
    Number(
        image: 'assets/images/numbers/number_one.png',
        jpname: 'ichi',
        enname: 'one',
        sound: "note1.wav"),
    Number(
        image: "assets/images/numbers/number_two.png",
        jpname: 'Ni',
        enname: 'two',
        sound: "number_two_sound.mp3"),
    Number(
        image: "assets/images/numbers/number_three.png",
        jpname: "San",
        enname: 'three',
        sound: "number_three_sound.mp3"),
    Number(
        image: "assets/images/numbers/number_four.png",
        jpname: "Shi",
        enname: 'four',
        sound: "number_four_sound.mp3"),
    Number(
        image: "assets/images/numbers/number_five.png",
        jpname: "Go",
        enname: 'five',
        sound: "number_five_sound.mp3"),
    Number(
        image: "assets/images/numbers/number_six.png",
        jpname: "Roku",
        enname: 'six',
        sound: "number_six_sound.mp3"),
    Number(
        image: "assets/images/numbers/number_seven.png",
        jpname: "Sebun",
        enname: 'seven',
        sound: "number_seven_sound.mp3"),
    Number(
        image: "assets/images/numbers/number_eight.png",
        jpname: "Hashi",
        enname: 'eight',
        sound: "number_eight_sound.mp3"),
    Number(
        image: "assets/images/numbers/number_nine.png",
        jpname: "ich",
        enname: 'nine',
        sound: "number_nine_sound.mp3"),
    Number(
        image: "assets/images/numbers/number_ten.png",
        jpname: "ich",
        enname: 'ten',
        sound: "number_ten_sound.mp3")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 78, 124, 132),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 113, 231, 151),
        title: const Text(
          'Numbers',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: // ListView(
          //   children: getnumbers(number),
          // ),
          ListView.builder(
        itemCount: number.length,
        itemBuilder: (context, num) {
          return NumbersRow(number: number[num]);
        },
      ),
    );
  }

  // a method to build list of widget
  // List<Widget> getnumbers(List<Number> numbers) {
  //   List<Widget> NumberRowlist = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     NumberRowlist.add(NumbersRow(number: numbers[i]));
}
  //   return NumberRowlist;
  // }
 