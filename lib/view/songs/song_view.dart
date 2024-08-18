// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/view/songs/albums_view.dart';
import 'package:music_player/view/songs/all_songs_view.dart';
import 'package:music_player/view/songs/artists_view.dart';
import 'package:music_player/view/songs/playlist_view.dart';

import '../../common/color_extension.dart';
import '../../view_model/splash_view_model.dart';

class SongsView extends StatefulWidget {
  const SongsView({super.key});

  @override
  State<SongsView> createState() => _SongsViewState();
}

class _SongsViewState extends State<SongsView> with SingleTickerProviderStateMixin {

  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {
        
      });
    });
  }

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
          'Songs',
          style: TextStyle(
            color: TColor.primaryText80,
            fontSize: 17,
            fontWeight: FontWeight.w600
          ),
        ),
        actions: [
          IconButton(
          onPressed: () {},
          icon: Image.asset(
              "assets/images/search.png",
              width: 19,
              height: 19,
              fit: BoxFit.contain,
              color: TColor.primaryText35,
            ),
          ),
        ],
      ),
      //? content
      body: Column(
        children: [
          //* tabs top side
          SizedBox(
            height: kToolbarHeight,
            child: TabBar(
              controller: controller,
              labelStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600
              ),
              labelColor: TColor.focus,
              unselectedLabelColor: TColor.primaryText80,
              unselectedLabelStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600
              ),
              indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
              indicatorColor: TColor.focus,
              isScrollable: true,
              tabs: [
                Tab(text: 'All Songs'),
                Tab(text: 'Playlists'),
                Tab(text: 'Albums'),
                Tab(text: 'Artists'),
                Tab(text: 'Genres'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [
                AllSongsView(),
                PlaylistView(),
                AlbumsView(),
                ArtistsView(),
                Center(child: Text("Genres")),
              ],
            ),
          )
        ],
      ),
    );
  }
}

