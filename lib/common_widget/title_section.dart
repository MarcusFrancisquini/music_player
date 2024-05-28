import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class TitleSection extends StatelessWidget {

  final String title;

  const TitleSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 17),
      child: Text(
        title,
        style: TextStyle(
          color: TColor.primaryText80,
          fontSize: 15,
          fontWeight: FontWeight.w600
        ),
      ),
    );
  }
}
