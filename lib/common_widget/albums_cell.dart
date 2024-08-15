// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables, dead_code

import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class AlbumsCell extends StatelessWidget {
  final Map aObj;
  final VoidCallback onPressed;
  final VoidCallback onPressedMenu;

  const AlbumsCell({
    super.key,
    required this.aObj,
    required this.onPressed,
    required this.onPressedMenu,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //* capa do álbum
        AspectRatio(
          aspectRatio: 1,
          child: Image.asset(
            aObj["image"],
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover
          ),
        ),
        SizedBox(
          height: 14,
        ),
        //* parte de cima
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                aObj["name"],
                maxLines: 1,
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 13,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            SizedBox(
              width: 4,
            ),
            InkWell(
              onTap: (){

              },
              child: Image.asset(
                "assets/images/more_btn.png",
                width: 12,
                height: 12,
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        //* parte de baixo
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              aObj["artists"],
              maxLines: 1,
              style: TextStyle(
                color: TColor.lightGray,
                fontSize: 11,
              ),
            ),
            Text(
              aObj["songs"],
              maxLines: 1,
              style: TextStyle(
                color: TColor.lightGray, 
                fontSize: 11
              ),
            ),
          ],
        ),
      ],
    );
  }
}
