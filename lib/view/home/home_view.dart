import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/common/color_extension.dart';
import 'package:music_player/common_widget/hot_recommended_card.dart';
import 'package:music_player/common_widget/title_section.dart';
import 'package:music_player/view_model/splash_view_model.dart';

import '../../common_widget/playlist_card.dart';
import '../../common_widget/song_row.dart';
import '../../common_widget/view_all_section.dart';
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
                    contentPadding: const EdgeInsets.symmetric(vertical: 15),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //* hot recommended
            const TitleSection(title: "Hot Recommended"),
            SizedBox(
              height: 190,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemCount: homeVM.hotRecommendedList.length,
                itemBuilder: (context, index) {
                  var mObj = homeVM.hotRecommendedList[index];
                  return HotRecommendedCard(mObj: mObj);
                },
              ),
            ),
            Divider(
              color: TColor.darkGray,
              indent: 17,
              endIndent: 17,
            ),
            //* playlists
            ViewAllSection(
              title: "Playlist",
              onPressed: () {},
            ),
            SizedBox(
              height: 175,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                scrollDirection: Axis.horizontal,
                itemCount: homeVM.playLists.length,
                itemBuilder: (context, index) {
                  var mObj = homeVM.playLists[index];
                  return PlaylistCard(mObj: mObj);
                },
              ),
            ),
            Divider(
              color: TColor.darkGray,
              indent: 17,
              endIndent: 17,
            ),
            //* recently played
            ViewAllSection(
              title: "Recently Played",
              onPressed: () {},
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              itemCount: homeVM.recentlyPlayed.length,
              itemBuilder: (context, index) {
                var sObj = homeVM.recentlyPlayed[index];
                return SongRow(
                  sObj: sObj,
                  onPressed: (){},
                  onPressedPlay: (){},
                );
              },
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}