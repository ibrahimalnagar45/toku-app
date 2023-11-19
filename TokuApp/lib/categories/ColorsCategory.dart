import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:businesscard/Models/Colors.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.color});
  final ColorsModel color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 110,
          height: 100,
          child: Image.asset(color.image),
        ),
        Container(
          width: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                color.jpname,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                color.enname,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
        IconButton(
          padding: EdgeInsets.only(left: 130),
          onPressed: () {
            AudioCache player =
                AudioCache(prefix: "assets/images/sounds/colors/");
            player.play(color.sound);
          },
          icon: Icon(Icons.play_arrow_rounded),
          color: Colors.white,
        )
      ],
    );
  }
}
