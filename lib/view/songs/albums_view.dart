// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/common_widget/albums_cell.dart';

import '../../view_model/albums_view_model.dart';

class AlbumsView extends StatefulWidget {
  const AlbumsView({super.key});

  @override
  State<AlbumsView> createState() => _AlbumsViewState();
}

class _AlbumsViewState extends State<AlbumsView> {

  final albumVM = Get.put(AlbumViewModel());

  @override
  Widget build(BuildContext context) {
    var cellWidth = 120;
    return Scaffold(
      body: Obx(() => GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: cellWidth / (cellWidth + 45) 
        ),
        itemCount: albumVM.allList.length,
        itemBuilder: (context, index){
          var aObj = albumVM.allList[index];
          return AlbumsCell(
            aObj: aObj,
            onPressed: (){},
            onPressedMenu: (selectIndex){
              if (kDebugMode) {
                print(index);
              }
            },
          );
        },
      )),
    );
  }
}

