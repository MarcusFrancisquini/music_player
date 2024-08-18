// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../common/color_extension.dart';

class ArtistsRow extends StatelessWidget {

  final Map arObj;
  final VoidCallback onPressed;
  final Function(int) onPressedMenu;

  const ArtistsRow({super.key, required this.arObj, required this.onPressed, required this.onPressedMenu});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //* cover image
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: Image.asset(
                  arObj["image"],
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 91,
                height: 91,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: TColor.primaryText20
                  ),
                  borderRadius: BorderRadius.circular(3)
                ),
              )
            ],
          ),
          //* middle text
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //* nome do artista
                      Text(
                        arObj["name"],
                        style: TextStyle(
                          color: TColor.primaryText80,
                          fontSize: 15,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      //* menu
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: PopupMenuButton<int>(
                          offset: Offset(-7, 27),
                          onSelected: onPressedMenu,
                          icon: Image.asset(
                            "assets/images/more_btn.png",
                            width: 20,
                            height: 20
                          ),
                          color: Color(0xff383B49),
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
                    height: 6,
                  ),
                  //* informações do artista
                  Row(
                    children: [
                      Text(
                        arObj["album"],
                        style: TextStyle(
                          color: TColor.primaryText35,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: Text(
                          " • ",
                          maxLines: 1,
                          style: TextStyle(
                            color: TColor.primaryText35, 
                            fontSize: 20
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        arObj["songs"],
                        style: TextStyle(
                          color: TColor.primaryText35,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

