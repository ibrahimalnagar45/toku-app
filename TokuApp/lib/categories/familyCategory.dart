import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:businesscard/Models/familyModel.dart';

class familyMemberItem extends StatelessWidget {
  familyMemberItem({super.key, required this.member, this.ontap});

  final familyMember member;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 75,
          height: 100,
          color: const Color.fromARGB(255, 110, 236, 200),
          child: Image.asset(member.image),
        ),
        Container(
          padding: const EdgeInsets.only(left: 12.0),
          width: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                member.jpname,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                member.enname,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
        IconButton(
          color: Colors.white,
          onPressed: () {
            AudioCache player =
                AudioCache(prefix: "assets/images/sounds/family_members/");
            player.play(member.sound);
          },
          icon: Icon(Icons.play_arrow_rounded),
          padding: EdgeInsets.only(left: 155),
        )
      ],
    );
  }
}
