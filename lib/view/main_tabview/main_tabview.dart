// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/common/color_extension.dart';
import 'package:music_player/view/home/home_view.dart';
import 'package:music_player/view_model/splash_view_model.dart';

import '../settings/settings_view.dart';
import '../songs/song_view.dart';
import '../../common_widget/icon_text_row.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> with SingleTickerProviderStateMixin{

  TabController? controller;
  int selectTab = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 3,
      vsync: this
    );

    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {
        
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context){

    var media = MediaQuery.sizeOf(context);

    var splahVM = Get.find<SplashViewModel>();

    return Scaffold(
      key: splahVM.scaffoldKey,
      drawer: Drawer(
        backgroundColor: TColor.bg,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            //? drawer
            SizedBox(
              height: 235,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: TColor.primaryText.withOpacity(0.03)
                ),
                child: Column(
                  children: [
                    //* Logo
                    Image.asset(
                      "assets/images/app_logo.png",
                      width: media.width * 0.2,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    //* Informations
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //* item 1
                        Column(
                          children: [
                            Text(
                              "328\nSongs",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffC1C0C0),
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        //* item 2
                        Column(
                          children: [
                            Text(
                              "52\nAlbums",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffC1C0C0),
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        //* item 3
                        Column(
                          children: [
                            Text(
                              "87\nArtists",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffC1C0C0),
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            //* item 1
            IconTextRow(
              title: 'Themes',
              icon: 'assets/images/m_theme.png',
              onTap: (){},
            ),
            //* item 2
            IconTextRow(
              title: 'Ringtone Cutter',
              icon: 'assets/images/m_ring_cut.png',
              onTap: (){},
            ),
            //* item 3
            IconTextRow(
              title: 'Sleep Timer',
              icon: 'assets/images/m_sleep_timer.png',
              onTap: (){},
            ),
            //* item 4
            IconTextRow(
              title: 'Equliser',
              icon: 'assets/images/m_eq.png',
              onTap: (){},
            ),
            //* item 5
            IconTextRow(
              title: 'Drive Mode',
              icon: 'assets/images/m_driver_mode.png',
              onTap: (){},
            ),
            //* item 6
            IconTextRow(
              title: 'Hidden Folders',
              icon: 'assets/images/m_hidden_folder.png',
              onTap: (){},
            ),
            //* item 7
            IconTextRow(
              title: 'Scan Media',
              icon: 'assets/images/m_scan_media.png',
              onTap: (){},
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        //? tabs
        children: [
          const HomeView(),
          const SongsView(),
          const SettingsView(),
        ],
      ),
      //? customization
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: TColor.bg,
          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 5,
              offset: Offset(0, -3)
            )
          ]
        ),
        child: BottomAppBar(
          color: TColor.bg,
          elevation: 1,
          child: TabBar(
            controller: controller,
            indicatorColor: Colors.transparent,
            indicatorWeight: 1,
            labelColor: TColor.primary,
            labelStyle: const TextStyle(
              fontSize: 10
            ),
            unselectedLabelColor: TColor.primaryText20,
            unselectedLabelStyle: const TextStyle(
              fontSize: 10
            ),
            tabs: [
              //* Tab 1
              Tab(
                text: "Home",
                icon: Image.asset(
                  selectTab == 0 ?
                  "assets/images/home_tab.png"
                  :
                  "assets/images/home_tab_un.png",
                  width: 20,
                  height: 20,
                )
              ),
              //* Tab 2
              Tab(
                text: "Songs",
                icon: Image.asset(
                  selectTab == 1 ?
                  "assets/images/songs_tab.png"
                  :
                  "assets/images/songs_tab_un.png",
                  width: 20,
                  height: 20,
                )
              ),
              //* Tab 3
              Tab(
                text: "Settings",
                icon: Image.asset(
                  selectTab == 2 ?
                  "assets/images/setting_tab.png"
                  :
                  "assets/images/setting_tab_un.png",
                  width: 20,
                  height: 20,
                )
              )
            ],
          ),
        ),
      ),
    );
  }

}

