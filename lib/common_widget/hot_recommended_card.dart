// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:music_player/common/color_extension.dart';

class HotRecommendedCard extends StatelessWidget {

  final Map mObj;

  const HotRecommendedCard({super.key, required this.mObj});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      margin: const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //* images
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Image.asset(
              mObj["image"],
              width: double.maxFinite,
              height: 125,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16),
          //* titles
          Text(
            mObj["name"],
            maxLines: 1,
            style: TextStyle(
              color: TColor.primaryText60,
              fontSize: 13,
              fontWeight: FontWeight.w700
            ),
          ),
          const SizedBox(height: 5),
          Text(
            mObj["artist"],
            maxLines: 1,
            style: TextStyle(
              color: TColor.secondaryText,
              fontSize: 11,
              fontWeight: FontWeight.w700
            ),
          )
        ],
      ),
    );
  }
}

