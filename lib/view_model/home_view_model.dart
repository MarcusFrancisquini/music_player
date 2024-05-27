import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/view/main_tabview/main_tabview.dart';

class HomeViewModel extends GetxController {
  
  // hot recommended
  final hotRecommendedList = [
    {
      "image": "assets/images/img_1.png",
      "name": "Sound of Sky",
      "artist": "Dilon Bruce"
    },
    {
      "image": "assets/images/img_2.png",
      "name": "Girl on Fire",
      "artist": "Alecia Keys"
    }
  ].obs;

  // playlists
  final playLists = [
    {
      "image": "assets/images/img_3.png",
      "name": "Classic Playlist",
      "artist": "Piano Guys"
    },
    {
      "image": "assets/images/img_4.png",
      "name": "Summer Playlist",
      "artist": "Dilon Bruce"
    },
    {
      "image": "assets/images/img_5.png",
      "name": "Pop Music",
      "artist": "Michael Jackson"
    }
  ];

  // recently played
  final recentlyPlayed = [
    {
      "rate": 4,
      "name": "Billie Jean",
      "artist": "Michael Jackson"
    },
    {
      "rate": 2,
      "name": "Earth Song",
      "artist": "Michael Jackson"
    },
    {
      "rate": 4,
      "name": "Mirror",
      "artist": "Justin Timberlake"
    },
    {
      "rate": 3,
      "name": "Remmenber the Time",
      "artist": "Michael Jackson"
    }
  ].obs;

  // search
  final txtSearch = TextEditingController().obs;

}

