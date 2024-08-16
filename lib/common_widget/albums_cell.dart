// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables, dead_code

import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class AlbumsCell extends StatelessWidget {
  final Map aObj;
  final VoidCallback onPressed;
  final Function(int) onPressedMenu;

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
            //? menu 
            SizedBox(
              width: 12,
              height: 12,
              child: PopupMenuButton<int>(
                offset: Offset(-5, 15),
                color: Color(0xff383B49),
                icon: Image.asset(
                  "assets/images/more_btn.png",
                  width: 11,
                  height: 11
                ),
                onSelected: onPressedMenu,
                padding: EdgeInsets.zero,
                itemBuilder: (context){
                  return [
                    //* item 1
                    PopupMenuItem(
                      height: 35,
                      value: 1,
                      child: Text(
                        "Play",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    //* item 2
                    PopupMenuItem(
                      height: 35,
                      value: 2,
                      child: Text(
                        "Play next",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    //* item 3
                    PopupMenuItem(
                      height: 35,
                      value: 3,
                      child: Text(
                        "Add to playing queue",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    //* item 4
                    PopupMenuItem(
                      height: 35,
                      value: 4,
                      child: Text(
                        "Add to playlist...",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    //* item 5
                    PopupMenuItem(
                      height: 35,
                      value: 5,
                      child: Text(
                        "Rename",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    //* item 6
                    PopupMenuItem(
                      height: 35,
                      value: 6,
                      child: Text(
                        "Tag editor",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    //* item 7
                    PopupMenuItem(
                      height: 35,
                      value: 7,
                      child: Text(
                        "Go to artist",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    //* item 8
                    PopupMenuItem(
                      height: 35,
                      value: 8,
                      child: Text(
                        "Delete from device",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    //* item 9
                    PopupMenuItem(
                      height: 35,
                      value: 9,
                      child: Text(
                        "Share",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ];
                },
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
