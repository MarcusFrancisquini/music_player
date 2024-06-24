// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/color_extension.dart';
import '../../common_widget/icon_text_row.dart';
import '../../view_model/splash_view_model.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //? top side
      appBar: AppBar(
        backgroundColor: TColor.bg,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.find<SplashViewModel>().openDrawer();
          },
          icon: Image.asset(
            "assets/images/menu.png",
            width: 25,
            height: 25,
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          'Settings',
          style: TextStyle(
            color: TColor.primaryText80,
            fontSize: 17,
            fontWeight: FontWeight.w600
          ),
        )
      ),
      //? content
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          //* item 1
          IconTextRow(
            title: 'Display',
            icon: 'assets/images/s_display.png',
            onTap: (){},
          ),
          //* item 2
          IconTextRow(
            title: 'Audio',
            icon: 'assets/images/s_audio.png',
            onTap: (){},
          ),
          //* item 3
          IconTextRow(
            title: 'Headset',
            icon: 'assets/images/s_headset.png',
            onTap: (){},
          ),
          //* item 4
          IconTextRow(
            title: 'Lockscreen',
            icon: 'assets/images/s_lock_screen.png',
            onTap: (){},
          ),
          //* item 5
          IconTextRow(
            title: 'Advanced',
            icon: 'assets/images/s_menu.png',
            onTap: (){},
          ),
          //* item 6
          IconTextRow(
            title: 'Other',
            icon: 'assets/images/s_other.png',
            onTap: (){},
          )
        ],
      ),
    );
  }
}
