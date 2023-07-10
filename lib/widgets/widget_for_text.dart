import 'package:flutter/material.dart';

import '../constns/constns.dart';
class text_style extends StatelessWidget {
  const text_style({super.key, required this.text});

final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:  TextStyle(color: Kcolor, fontSize: 32,fontFamily: 'Pacifico'),
    );
  }
}
