
import 'package:flutter/material.dart';
import 'package:languageapp/models/itemModel.dart';

import '../constns/constns.dart';
import '../widgets/container_items_for_phrases_screen.dart';
import '../widgets/widget_for_text.dart';
class phrases_screen extends StatelessWidget {
   phrases_screen({super.key});
  final List<ItemModel> phrases =  [
    ItemModel(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      JAText: 'Kōdoku suru koto o wasurenaide kudasai',
      ENText: 'dont forget to subscribe',
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_programming.wav',
      JAText: 'Watashi wa puroguramingu daisukidesu',
      ENText: 'i love  programming',
    ),
    ItemModel(
      sound: 'sounds/phrases/programming_is_easy.wav',
      JAText : 'Puroguramingu wa kantandesu ',
      ENText : 'programming is easy',
    ),
    ItemModel(
      sound: 'sounds/phrases/where_are_you_going.wav',
      JAText: 'Doko ni iku no',
      ENText: 'where are you going',
    ),
    ItemModel(
      sound: 'sounds/phrases/what_is_your_name.wav',
      JAText: 'Namae wa nandesu ka',
      ENText: 'what is your name ?',
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_anime.wav',
      JAText: 'Watashi wa anime ga daisukidesu',
      ENText: 'i love anime',
    ),
    ItemModel(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      JAText: 'Go kibun wa ikagadesu ka',
      ENText: 'how are you feeling?',
    ),
    ItemModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      JAText: 'Kimasu ka',
      ENText: 'are you coming?',
    ),
    ItemModel(
      sound: 'sounds/phrases/yes_im_coming.wav',
      JAText: 'Hai watashi wa kite imasu',
      ENText: 'yes i am coming',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Kcolor,
              size: 32,
            ),
          ),
          title: const text_style(
            text: 'Phrases',
          ),
        ),
        //listview.builder build only widgets appear on the screen when scroll then build another widget
        body: ListView.builder(
            itemCount: phrases.length,
            itemBuilder: (context, index) {
              return container_item_Phrases_screen (number: phrases[index], color:Color(0xffe26d5c),);
            })
//used with for loop,listview build all widgets only once
//       body: ListView(
//         children: gitList(numbers!),
//       ),
    );
  }
}
