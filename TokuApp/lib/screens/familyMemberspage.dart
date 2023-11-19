import 'package:businesscard/categories/familyCategory.dart';
import 'package:flutter/material.dart';
import 'package:businesscard/Models/familyModel.dart';

class familyMemberspage extends StatelessWidget {
  familyMemberspage({super.key});

  List<familyMember> member = const [
    familyMember(
        image: 'assets/images/family_members/family_father.png',
        jpname: 'Chichioya',
        enname: 'father',
         sound: "father.wav"),
    familyMember(
        image: 'assets/images/family_members/family_mother.png',
        jpname: 'Hahaoya',
        enname: 'Mother'
        ,
        sound: "mother.wav"),
    familyMember(
        image: 'assets/images/family_members/family_grandfather.png',
        jpname: 'Ojisan',
        enname: 'GrandFather', sound: "grand father.wav"),
    familyMember(
        image: 'assets/images/family_members/family_grandmother.png',
        jpname: 'Sobo',
        enname: 'GrandMother', sound: "grand mother.wav"),
    familyMember(
        image: 'assets/images/family_members/family_daughter.png',
        jpname: 'Musume',
        enname: 'Daughter',
         sound: "daughter.wav"),
    familyMember(
        image: 'assets/images/family_members/family_son.png',
        jpname: 'Musuko',
        enname: 'Son',
         sound: "son.wav"),
    familyMember(
        image: 'assets/images/family_members/family_older_brother.png',
        jpname: 'Nisan',
        enname: 'Older Brother',
         sound: "older bother.wav"),
    familyMember(
        image: 'assets/images/family_members/family_older_sister.png',
        jpname: 'Ane',
        enname: 'Older Sister',
         sound: "older sister.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff39A17F),
        appBar: AppBar(
          title: const Text('Family Members',
              style: TextStyle(fontSize: 25, color: Colors.black)),
          backgroundColor: const Color.fromARGB(255, 113, 231, 151),
        ),
        body: ListView.builder(
          itemCount: member.length,
          itemBuilder: (context, num) {
            return familyMemberItem(member: member[num]);
          },
        ));
  }
}
