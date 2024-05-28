// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../common/color_extension.dart';

class SongRow extends StatelessWidget {
  final Map sObj;
  final VoidCallback onPressedPlay;
  final VoidCallback onPressed;

  const SongRow({super.key, required this.sObj, required this.onPressedPlay, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: onPressedPlay,
              icon: Image.asset(
                "assets/images/play_btn.png",
                width: 25,
                height: 25,
              ),
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
                      sObj["artist"],
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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 9),
                  child: IgnorePointer(
                    ignoring: true,
                    child: RatingBar.builder(
                      initialRating: sObj["rate"],
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      unratedColor: TColor.org.withOpacity(0.3),
                      itemSize: 12,
                      updateOnDrag: false,
                      itemPadding: EdgeInsets.zero,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: TColor.org,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ),
              ],
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
