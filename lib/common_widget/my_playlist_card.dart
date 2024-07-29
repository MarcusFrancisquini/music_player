// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class MyPlaylistCard extends StatelessWidget {
  final Map pObj;
  final VoidCallback onPressed;

  const MyPlaylistCard(
      {super.key, required this.pObj, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //* cover images
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(pObj["image"],
                  width: 90,
                  height: 80,
                  fit: BoxFit.cover
                ),
              ),
              Container(
                width: 90,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: TColor.primaryText20),
                  borderRadius: BorderRadius.circular(5)
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            pObj["name"],
            maxLines: 1,
            style: TextStyle(
              color: TColor.primaryText60,
              fontSize: 12,
              fontWeight: FontWeight.w600
            ),
          ),
        ],
      ),
    );
  }
}
