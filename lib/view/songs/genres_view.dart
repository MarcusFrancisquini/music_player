// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/common_widget/genres_card.dart';
import 'package:music_player/view_model/genres_view_model.dart';

class GenresView extends StatefulWidget {
  const GenresView({super.key});

  @override
  State<GenresView> createState() => _GenresViewState();
}

class _GenresViewState extends State<GenresView> {

  final gVM = Get.put(GenresViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => GridView.builder(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 1.2
          ),
          itemCount: gVM.genresList.length,
          itemBuilder: (context, index){
            var gObj = gVM.genresList[index];
            return GenresCard(
              gObj: gObj,
            );
          },
        )
      ),
    );
  }
}

