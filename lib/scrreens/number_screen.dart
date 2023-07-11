import 'package:flutter/material.dart';
import 'package:languageapp/constns/constns.dart';

import '../models/numbers.dart';
import '../widgets/container_items_for_number_screen.dart';
import '../widgets/widget_for_text.dart';
//ignore: must_be_immutable

class Numbers_Screen extends StatelessWidget {
  final List<Numbers>? numbers = [
    Numbers(
        image: 'assets/images/numbers/number_one.png',
        JAText: 'Ichi',
        ENText: 'One'),
    Numbers(
        image: 'assets/images/numbers/number_two.png',
        JAText: 'Ni',
        ENText: 'Two'),
    Numbers(
        image: 'assets/images/numbers/number_three.png',
        JAText: 'San',
        ENText: 'Three'),
    Numbers(
        image: 'assets/images/numbers/number_four.png',
        JAText: 'Yon',
        ENText: 'Four'),
    Numbers(
        image: 'assets/images/numbers/number_five.png',
        JAText: 'Go',
        ENText: 'Five'),
    Numbers(
        image: 'assets/images/numbers/number_six.png',
        JAText: 'Roku',
        ENText: 'Six'),
    Numbers(
        image: 'assets/images/numbers/number_seven.png',
        JAText: 'Nana',
        ENText: 'Seven'),
    Numbers(
        image: 'assets/images/numbers/number_eight.png',
        JAText: 'Hachi',
        ENText: 'Eight'),
    Numbers(
        image: 'assets/images/numbers/number_nine.png',
        JAText: 'Kyu',
        ENText: 'Nine'),
    Numbers(
        image: 'assets/images/numbers/number_ten.png',
        JAText: 'Ju',
        ENText: 'Ten')
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
      // body: ListView.builder(
      //     itemCount: numbers!.length,
      //     itemBuilder: (context, index) {
      //       return container_item_number_screen(number: numbers![index]);
      //     })
//used with for loop
      body: ListView(
        children: gitList(numbers!),
      ),
    );
  }

//used to build item instead of repeat widget and work as listview.builder
  List<Widget> gitList(List<Numbers> num) {
    List<Widget> item = [];
    for (int i = 0; i < numbers!.length; i++) {
      item.add(container_item_number_screen(number: num[i]));
    }
    return item;
  }
}
