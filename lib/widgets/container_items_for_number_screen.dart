import 'package:flutter/material.dart';
import 'package:languageapp/models/numbers.dart';
import 'package:languageapp/widgets/widget_for_text.dart';

import '../constns/constns.dart';

class container_item_number_screen extends StatelessWidget {
  const container_item_number_screen({super.key, required this.number});
  final Numbers number;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xffffe1a8),
        ),
        height: 200,
        child: Row(
          children: [
            Image.asset('${number.image}'),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  text_style(
                    text: '${number.JAText}',
                  ),
                  text_style(
                    text: '${number.ENText}',
                  ),
                ],
              ),
            ),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow,
                  color: Kcolor,
                  size: 52,
                ))
          ],
        ),
      ),
    );
  }
}
