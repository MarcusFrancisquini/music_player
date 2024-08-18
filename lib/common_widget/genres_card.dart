// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import '../common/color_extension.dart';

class GenresCard extends StatelessWidget {
  final Map gObj;

  const GenresCard({super.key, required this.gObj});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 2
          )
        ]
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            gObj["cover"],
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            color: Colors.black54
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                gObj["genre"],
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 17,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                gObj["songs"],
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 13,
                  fontWeight: FontWeight.w500
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
