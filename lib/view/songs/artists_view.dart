// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/common_widget/artists_row.dart';
import 'package:music_player/view_model/artists_view_model.dart';

class ArtistsView extends StatefulWidget {
  const ArtistsView({super.key});

  @override
  State<ArtistsView> createState() => _ArtistsViewState();
}

class _ArtistsViewState extends State<ArtistsView> {

  // pegando o modelo
  final allAR = Get.put(ArtistsViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        // construtor que criará os itens em forma de lista
        () => ListView.builder(
          padding: EdgeInsets.only(right: 20, left: 20, top: 40, bottom: 20),
          itemCount: allAR.artistsList.length,
          itemBuilder: (context, index){
            var arObj = allAR.artistsList[index];
            // itens
            return ArtistsRow(
              arObj: arObj,
              onPressed: (){},
              onPressedMenu: (selectedIndex){
                if (kDebugMode) {
                  print(index);
                }
              },
            );
          },
        )
      )
    );
  }
}

