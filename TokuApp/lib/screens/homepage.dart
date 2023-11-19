import 'package:businesscard/categories/home_page_category.dart';
import 'package:businesscard/screens/ColorsPage.dart';
import 'package:businesscard/screens/NumbersBage.dart';
import 'package:businesscard/screens/familyMemberspage.dart';
import 'package:flutter/material.dart';

import 'PhrasesPage.dart';

class HOMEPAGE extends StatelessWidget {
  const HOMEPAGE({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 113, 231, 151),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 113, 231, 151),
        shadowColor: Colors.black,
        title: const Text(
          'TOKU',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          homepagemainpart(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
            title: 'Numbers',
            color: const Color(0xff008065),
          ),
          homepagemainpart(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return familyMemberspage();
              }));
            },
            title: 'FamilyMembers',
            color: const Color(0xff39A17F),
          ),
          homepagemainpart(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return COLORSPAGE();
              }));
            },
            title: 'Colors',
            color: Color.fromARGB(255, 13, 95, 106),
          ),
          homepagemainpart(
            ontap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            },
            title: 'Phrases',
            color: const Color(0xff039094),
          )
        ],
      ),
    );
  }
}
