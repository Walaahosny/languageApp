import 'package:flutter/material.dart';
import 'package:languageapp/widgets/widget_for_text.dart';

import '../constns/constns.dart';

class Container_Home_Screen extends StatelessWidget {
  const Container_Home_Screen(
      {super.key, required this.color, required this.text, required this.pressed});
  final Color color;
  final String text;
final VoidCallback pressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
 onTap: pressed,
        child: Card(
          elevation: 8,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: color,
              ),
              width: double.infinity,
              child: Center(
                  child: text_style(
                text: text,

              ))),
        ),
      ),
    );
  }
}
