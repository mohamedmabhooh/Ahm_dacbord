
import 'package:flutter/material.dart';
import 'package:ahm_dachbord/view/splash.dart';
import 'package:ahm_dachbord/view/Authentication_Screen/login_screen.dart';

import '../view/Authentication_Screen/forget_password.dart';
import '../view/Authentication_Screen/new_password.dart';
import '../view/Authentication_Screen/sucsses_reset_password.dart';
import '../view/Authentication_Screen/verifiction_code.dart';



class RoutesApp {
  static const String initRoutes = '/';
  static const String Splash = '/Splash';
  static const String login_screen ='/login_screen';
  static const String forget_password ='/forget_password';
  static const String verifiction_code ='/verifiction_code';
  static const String new_password ='/new_password';
  static const String sucsses = '/sucsses';

}

class SettingRouts {
  static Route? onGenerateInitialRoutes(RouteSettings routes) {
    switch (routes.name) {
      case RoutesApp.initRoutes:
      // return MaterialPageRoute(builder: (context) => LoginScreen());
        return MaterialPageRoute(builder: (context) => splash());

      case RoutesApp.login_screen:
        return MaterialPageRoute(builder: (context)=> login_screen());
      case RoutesApp.forget_password:
        return MaterialPageRoute(builder: (context)=> forget_password());

      case RoutesApp.verifiction_code:
        return MaterialPageRoute(builder: (context)=>verifiction_code());
      case RoutesApp.new_password:
        return MaterialPageRoute(builder: (context)=>new_password());

      case RoutesApp.sucsses:
        return MaterialPageRoute(builder: (context)=>sucsses());

      default:
        return null;
    }
  }
}
