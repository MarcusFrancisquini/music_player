import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/common/color_extension.dart';

import '../../view_model/home_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final homeVM = Get.put(HomeViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //? top side 
      appBar: AppBar(
        backgroundColor: TColor.bg,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: Image.asset(
            "assets/images/menu.png",
            width: 25,
            height: 25,
            fit: BoxFit.contain,
          ),
        ),
        title: Row(
          children: [
            Expanded(
              child: Container(
                height: 38,
                decoration: BoxDecoration(
                  color: const Color(0xff292E4B),
                  borderRadius: BorderRadius.circular(19)
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: homeVM.txtSearch.value,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    hintText: "Search album song",
                    hintStyle: TextStyle(
                      color: TColor.primaryText20,
                      fontSize: 13
                    )
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      //? content
      
    );
  }
}