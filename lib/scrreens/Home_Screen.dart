import 'package:flutter/material.dart';
import 'package:languageapp/scrreens/phrases_screen.dart';
import 'package:languageapp/widgets/container_FOR_home_screen.dart';
import 'package:languageapp/widgets/widget_for_text.dart';

import 'colors_screen.dart';
import 'familymembers_screen.dart';
import 'number_screen.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const text_style(
          text: 'Toku',
        ),
      ),
      body: Column(
        children: [
          Container_Home_Screen(
            color: const Color(0xffffe1a8),
            text: 'Numbers',
            pressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return  Numbers_Screen();
              }));
            },
          ),
          Container_Home_Screen(
            color: const Color(0xffe26d5c),
            text: 'Phrases',
            pressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const phrases_screen();
              }));
            },
          ),
          Container_Home_Screen(
            color: const Color(0xffc9cba3),
            text: 'Family Members',
            pressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const familyMembers_screen()));
            },
          ),
          Container_Home_Screen(
            color: const Color(0xff723d46),
            text: ' Colors',
            pressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const colors_screen()));
            },
          )
        ],
      ),
    );
  }
}
