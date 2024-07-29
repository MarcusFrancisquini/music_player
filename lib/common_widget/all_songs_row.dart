// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class AllSongRow extends StatelessWidget {
  final Map sObj;
  final VoidCallback onPressedPlay;
  final VoidCallback onPressed;

  const AllSongRow({super.key, required this.sObj, required this.onPressedPlay, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            //* cover images
            Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    sObj["image"], 
                    width: 50, 
                    height: 50, 
                    fit: BoxFit.cover
                  ),
                ),
                Container(
                  width: 50, 
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: TColor.primaryText20
                    ),
                    borderRadius: BorderRadius.circular(25)
                  ),
                ),
                Container(
                  width: 18, 
                  height: 18,
                  decoration: BoxDecoration(
                    color: TColor.bg,
                    borderRadius: BorderRadius.circular(8.5)
                  ),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //* titles
                    Text(
                      sObj["name"],
                      maxLines: 1,
                      style: TextStyle(
                        color: TColor.primaryText60,
                        fontSize: 13,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      sObj["artists"],
                      maxLines: 1,
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 11,
                        fontWeight: FontWeight.w700
                      ),
                    )
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: onPressedPlay,
              icon: Image.asset(
                "assets/images/play_btn.png",
                width: 25,
                height: 25,
              ),
            )
          ],
        ),
        Divider(
          color: TColor.darkGray, 
          indent: 58, 
          endIndent: 10
        )
      ],
    );
  }
}
