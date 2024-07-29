// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables, dead_code

import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class PlaylistGrid extends StatelessWidget {
  final Map pObj;
  final VoidCallback onPressed;
  final VoidCallback onPressedPlay;

  const PlaylistGrid(
      {super.key,
      required this.pObj,
      required this.onPressed,
      required this.onPressedPlay});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          pObj["image"],
          width: double.maxFinite,
          height: double.maxFinite,
          fit: BoxFit.cover
        ),
        Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: Colors.black45
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pObj["name"],
                      maxLines: 1,
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      pObj["songs"],
                      maxLines: 1,
                      style: TextStyle(
                        color: TColor.primaryText60, 
                        fontSize: 11
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: onPressedPlay,
                child: Image.asset(
                  "assets/images/play.png",
                  width: 22,
                  height: 20,
                )
              )
            ],
          ),
        )
      ],
    );
  }
}
