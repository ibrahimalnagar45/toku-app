import 'package:businesscard/Models/Phrases.dart';
import 'package:businesscard/categories/phrasesItem.dart';
import 'package:flutter/material.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<PhrasesModel> phrase = const [
    PhrasesModel(
      jpphrase: 'Don\'t forget to subscribe',
      enphrase: 'Don\'t forget to subscribe',
      audio: 'dont_forget_to_subscribe.wav',
    ),
    PhrasesModel(
      jpphrase: 'dfs',
      enphrase: 'I love programming',
      audio: 'i_love_programming.wav',
    ),
    PhrasesModel(
      jpphrase: 'dfs',
      enphrase: ' Programming is easy',
      audio: 'programming_is_easy.wav',
    ),
    PhrasesModel(
      jpphrase: 'dfs',
      enphrase: 'Where are you going ',
      audio: 'where_are_you_going.wav',
    ),
    PhrasesModel(
      jpphrase: 'dfs',
      enphrase: 'What is your name?',
      audio: 'what_is_your_name.wav',
    ),
    PhrasesModel(
      jpphrase: 'dfs',
      enphrase: 'I love anime',
      audio: 'i_love_anime.wav',
    ),
    PhrasesModel(
      jpphrase: 'dfs',
      enphrase: 'How are you feeling?',
      audio: 'how_are_you_feeling.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff039094),
      appBar: AppBar(
        title: const Text(
          'Phrases',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 113, 231, 151),
      ),
      body: ListView.builder(
          itemCount: phrase.length,
          itemBuilder: (context, index) {
            return PhrasesItem(phrase: phrase[index]);
          }),
    );
  }
}
