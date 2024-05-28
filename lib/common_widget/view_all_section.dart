import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class ViewAllSection extends StatelessWidget {

  final String title;
  final String buttonTitle;
  final VoidCallback onPressed;

  const ViewAllSection({super.key, required this.title, this.buttonTitle = "View All", required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17, right: 6, top: 8, bottom: 7),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: TColor.primaryText80,
                fontSize: 15,
                fontWeight: FontWeight.w600
              ),
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonTitle,
              style: TextStyle(
                color: TColor.org,
                fontSize: 11
              ),
            ),
          )
        ],
      ),
    );
  }
}
