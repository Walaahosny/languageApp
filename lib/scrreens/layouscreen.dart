import 'package:flutter/material.dart';
import 'package:languageapp/widgets/container_FOR_home_screen.dart';
import 'package:languageapp/widgets/widget_for_text.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const text_style(text: 'Toku',),
        backgroundColor: const Color(0xff472d30),
      ),
      body:  Column(
        children: [
          Container_Home_Screen(
            color: const Color(0xffffe1a8),
            text: 'Numbers', pressed: () {  },
          ),
          Container_Home_Screen(
            color: const Color(0xffe26d5c),
            text: 'Phrases', pressed: () {  },
          ),
          Container_Home_Screen(
            color: const Color(0xffc9cba3),
            text: 'Family Members', pressed: () {  },
          ),
          Container_Home_Screen(
            color: const Color(0xff723d46),
            text: ' Colors', pressed: () { print("object"); },
          )
        ],
      ),
    );
  }
}
