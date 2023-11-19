import 'package:businesscard/Models/number_model.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class NumbersRow extends StatelessWidget {
  NumbersRow({super.key, required this.number, this.ontap});
  final Number number;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff008065),
      child: Row(
        children: [
          Container(
            width: 75,
            height: 100,
            color: const Color.fromARGB(255, 110, 236, 200),
            child: Image.asset(
              number.image,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 12),
            width: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(number.jpname,
                    style: const TextStyle(fontSize: 20, color: Colors.white)),
                Text(number.enname,
                    style: const TextStyle(fontSize: 15, color: Colors.white)),
              ],
            ),
          ),
          IconButton(
              padding: const EdgeInsets.only(left: 195),
              onPressed: () {
                 AudioCache player = 
                  AudioCache(prefix: 'assets/images/sounds/numbers/');
              player.play(number.sound);
              },
              icon: const Icon(
                Icons.play_arrow_rounded,
                size: 30,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
