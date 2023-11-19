import 'package:audioplayers/audioplayers.dart';
import 'package:businesscard/Models/Phrases.dart';
import 'package:flutter/material.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({
    super.key,
    required this.phrase,
  });
  final PhrasesModel phrase;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 240,
          height: 90,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                phrase.jpphrase,
                style: const TextStyle(color: Colors.white, fontSize: 22),
              ),
              Text(phrase.enphrase,
                  style: const TextStyle(color: Colors.white, fontSize: 22)),
            ],
          ),
        ),
        IconButton(
            padding: const EdgeInsets.only(left: 125),
            onPressed: () {
              AudioCache player =
                  AudioCache(prefix: 'assets/images/sounds/phrases/');
              player.play(phrase.audio);
            },
            icon: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
            ))
      ],
    );
  }
}
