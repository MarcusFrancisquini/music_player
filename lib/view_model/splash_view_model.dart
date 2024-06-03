import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/view/main_tabview/main_tabview.dart';

class SplashViewModel extends GetxController {

  var scaffoldKey = GlobalKey<ScaffoldState>();
  
  void loadView() async{
    await Future.delayed(
      const Duration(
        seconds: 3
      )
    );
    Get.to(() => const MainTabView());
  }

  //* Abrir aba lateral
  void openDrawer(){
    scaffoldKey.currentState?.openDrawer();
  }

  //* Fechar aba lateral
  void closeDrawer(){
    scaffoldKey.currentState?.closeDrawer();
  }

}

