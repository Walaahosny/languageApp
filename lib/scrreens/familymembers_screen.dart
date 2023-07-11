import 'package:flutter/material.dart';

import '../constns/constns.dart';
import '../models/itemModel.dart';
import '../widgets/container_items_screens.dart';
import '../widgets/widget_for_text.dart';
class familyMembers_screen extends StatelessWidget {
  final List<ItemModel> familymembers =  [
    ItemModel(
      sound: 'sounds/family_members/father.wav',
      JAText: 'Chichioya',
      ENText: 'father',
      image: 'assets/images/family_members/family_father.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/daughter.wav',
      JAText: 'Musume',
      ENText: 'daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand father.wav',
      JAText: 'Ojīsan',
      ENText: 'Grand Father',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/mother.wav',
      JAText: 'Hahaoya',
      ENText: 'mother',
      image: 'assets/images/family_members/family_mother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/grand mother.wav',
      JAText: 'Sobo',
      ENText: 'grand mother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/older bother.wav',
      JAText: 'Nīsan',
      ENText: 'older brother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/older sister.wav',
      JAText: 'Ane',
      ENText: 'older sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/son.wav',
      JAText: 'Musuko',
      ENText: 'son',
      image: 'assets/images/family_members/family_son.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/older bother.wav',
      JAText: 'otōto',
      ENText: 'younger brother',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    ItemModel(
      sound: 'sounds/family_members/younger sister.wav',
      JAText: 'Imōto',
      ENText: 'younger sister',
      image: 'assets/images/family_members/family_younger_sister.png',
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
            text: 'Family Members',
          ),
        ),
        //listview.builder build only widgets appear on the screen when scroll then build another widget
        body: ListView.builder(
            itemCount: familymembers!.length,
            itemBuilder: (context, index) {
              return container_item_screens(number: familymembers![index], color: Color(0xffc9cba3),);
            })
//used with for loop,listview build all widgets only once
//       body: ListView(
//         children: gitList(numbers!),
//       ),
    );
  }
}
