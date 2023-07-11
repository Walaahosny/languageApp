import 'package:flutter/material.dart';
import 'package:languageapp/constns/constns.dart';

import '../models/itemModel.dart';
import '../widgets/container_items_screens.dart';
import '../widgets/widget_for_text.dart';
//ignore: must_be_immutable

class Numbers_Screen extends StatelessWidget {
  List<ItemModel>? numbers = [
    ItemModel(
        image: 'assets/images/numbers/number_one.png',
        JAText: 'Ichi',
        ENText: 'One', sound: 'sounds/numbers/number_one_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_two.png',
        JAText: 'Ni',
        ENText: 'Two', sound: 'sounds/numbers/number_two_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_three.png',
        JAText: 'San',
        ENText: 'Three', sound: 'sounds/numbers/number_three_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_four.png',
        JAText: 'Yon',
        ENText: 'Four', sound: 'sounds/numbers/number_four_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_five.png',
        JAText: 'Go',
        ENText: 'Five', sound: 'sounds/numbers/number_five_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_six.png',
        JAText: 'Roku',
        ENText: 'Six', sound: 'sounds/numbers/number_six_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_seven.png',
        JAText: 'Nana',
        ENText: 'Seven', sound: 'sounds/numbers/number_seven_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_eight.png',
        JAText: 'Hachi',
        ENText: 'Eight', sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_nine.png',
        JAText: 'Kyu',
        ENText: 'Nine', sound: 'sounds/numbers/number_nine_sound.mp3'),
    ItemModel(
        image: 'assets/images/numbers/number_ten.png',
        JAText: 'Ju',
        ENText: 'Ten', sound: 'sounds/numbers/number_ten_sound.mp3')
  ];
  Numbers_Screen({super.key});
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
          text: 'Numbers',
        ),
      ),
      //listview.builder build only widgets appear on the screen when scroll then build another widget
      body: ListView.builder(
          itemCount: numbers!.length,
          itemBuilder: (context, index) {
            return container_item_screens(number: numbers![index], color:  Color(0xffffe1a8),);
          })
//used with for loop,listview build all widgets only once
//       body: ListView(
//         children: gitList(numbers!),
//       ),
    );
  }

//used to build item instead of repeat widget and work as listview.builder
//   List<Widget> gitList(List<Numbers> num) {
//     List<Widget> item = [];
//     for (int i = 0; i < numbers!.length; i++) {
//       item.add(container_item_number_screen(number: num[i]));
//     }
//     return item;
//   }
}
