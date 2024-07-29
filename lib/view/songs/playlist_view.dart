// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/common_widget/my_playlist_card.dart';
import 'package:music_player/common_widget/playlists_grid.dart';
import 'package:music_player/common_widget/view_all_section.dart';
import 'package:music_player/view_model/playlists_view_model.dart';

class PlaylistView extends StatefulWidget {
  const PlaylistView({super.key});

  @override
  State<PlaylistView> createState() => _PlaylistViewState();
}

class _PlaylistViewState extends State<PlaylistView> {

  final plVM = Get.put(PlaylistsViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff23273B),
        onPressed: (){},
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Image.asset(
            "assets/images/add.png"
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.4,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0
                  ),
                  itemCount: plVM.playlistArr.length,
                  itemBuilder: (context, index) {
                    var pObj = plVM.playlistArr[index];
                    return PlaylistGrid(
                      pObj: pObj,
                      onPressed: (){},
                      onPressedPlay: (){},
                    );
                  },
                )
              ),
              ViewAllSection(
                title: "My Playlists", 
                onPressed: (){}
              ),
              SizedBox(
                height: 150,
                child: Obx(
                  () => ListView.builder(   
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 6),  
                    itemCount: plVM.myplaylistArr.length,  
                    itemBuilder: (context, index){
                      var pObj = plVM.myplaylistArr[index];
                      return MyPlaylistCard(
                        pObj: pObj,
                        onPressed: (){},
                      );
                    },
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
