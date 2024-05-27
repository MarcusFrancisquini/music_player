// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:music_player/common/color_extension.dart';
import 'package:music_player/view/home/home_view.dart';

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
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: [
          const HomeView(
            
          ),
          Container(
            child: const Center(child: Text("Songs"))
          ),
          Container(
            child: const Center(child: Text("Settings"))
          ),
        ],
      ),
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

