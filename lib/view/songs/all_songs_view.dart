// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/common_widget/all_songs_row.dart';
import 'package:music_player/view_model/all_songs_view_model.dart';

class AllSongsView extends StatefulWidget {
  const AllSongsView({super.key});

  @override
  State<AllSongsView> createState() => _AllSongsViewState();
}

class _AllSongsViewState extends State<AllSongsView> {

  final allVM = Get.put(AllSongsViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView.builder(   
          padding: EdgeInsets.only(top: 30, left: 20, right: 15, bottom: 15),  
          itemCount: allVM.alllist.length,  
          itemBuilder: (context, index){
            var sObj = allVM.alllist[index];
            return AllSongRow(
              sObj: sObj,
              onPressed: (){},
              onPressedPlay: (){},
            );
          },
        )
      ),
    );
  }
}

