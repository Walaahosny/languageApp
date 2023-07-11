import 'package:flutter/material.dart';
import 'package:languageapp/models/itemModel.dart';

import '../constns/constns.dart';
import '../widgets/container_items_screens.dart';
import '../widgets/widget_for_text.dart';
class colors_screen extends StatelessWidget {
  final List<ItemModel> colors =  [
    ItemModel(
      sound: 'sounds/colors/black.wav',


      image: 'assets/images/colors/color_black.png', JAText:  'Burakku', ENText: 'black',
    ),
    ItemModel(
      sound: 'sounds/colors/brown.wav',
      JAText: 'Chairo',
      ENText: 'brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    ItemModel(
      sound: 'sounds/colors/dusty yellow.wav',
      JAText: 'Hokori ppoi kiiro',
      ENText: 'dusty yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    ItemModel(
      sound: 'sounds/colors/gray.wav',
      JAText: 'Gurē',
      ENText: 'gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    ItemModel(
      sound: 'sounds/colors/green.wav',
      JAText: 'Midori',
      ENText: 'green',
      image: 'assets/images/colors/color_green.png',
    ),
    ItemModel(
      sound: 'sounds/colors/red.wav',
      JAText: 'Aka',
      ENText: 'red',
      image: 'assets/images/colors/color_red.png',
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
            text: 'Colors',
          ),
        ),
        //listview.builder build only widgets appear on the screen when scroll then build another widget
        body: ListView.builder(
            itemCount: colors.length,
            itemBuilder: (context, index) {
              return container_item_screens(number: colors[index], color: Color(0xff723d46),);
            })
//used with for loop,listview build all widgets only once
//       body: ListView(
//         children: gitList(numbers!),
//       ),
    );
  }
}
