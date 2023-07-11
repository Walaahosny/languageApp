import 'package:flutter/material.dart';
import 'package:languageapp/models/itemModel.dart';
import 'package:languageapp/widgets/widget_for_text.dart';
import '../constns/constns.dart';
import 'package:audioplayers/audioplayers.dart';

class container_item_Phrases_screen extends StatelessWidget {
  const container_item_Phrases_screen ({super.key, required this.number,required this.color});
  final ItemModel number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        height: 200,
        child: Row(
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                onPressed: () {
                  try{final player = AudioPlayer();
                  player.play(AssetSource(number.sound));}
                  catch(e){
                    print(e.toString())
                    ;                      }

                },
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
