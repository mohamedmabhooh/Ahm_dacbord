import 'dart:developer';

import 'package:get/get.dart';

import 'SharedPreferences/SharedPreferences.dart';


class lang_Controller extends GetxController{
  lang_Controller get to => Get.find();





  String lang = SharedPreferencesApp().Langu;
  void setLAng(String l) {
    lang = l;
    log('lang => $l');
    SharedPreferencesApp().SaveLang(lang);
    update();
  }

}