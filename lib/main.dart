
import 'package:device_preview/device_preview.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../Controller/RoutesController.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/Authentication_controller/verifiction_code_controller.dart';
import 'controller/SharedPreferences/SharedPreferences.dart';
import 'controller/lang_controller.dart';



//Apple => https://apps.apple.com/qa/app/Aradi/id6444013347
// googlePlay => https://play.google.com/store/apps/details?id=com.reservation.flutter.android.ios.reservation&pli=1
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedPreferencesApp().initSharedPreferences();
  Get.put(verifiction_code_controller());
  Get.put(lang_Controller());

  runApp(  MyApp(),); // Wrap your app

}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>  {
  // This widget is the root of your application.
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 760),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, build) {
        return GetBuilder<lang_Controller>(
        builder: (controller) {
        return  MaterialApp(
          builder: DevicePreview.appBuilder,
          localizationsDelegates: const [
           // AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'), // English, no country code
            Locale('ar'), // Spanish, no country code
          ],
          locale: Locale(controller.lang),
          debugShowCheckedModeBanner: false,

              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              onGenerateRoute: SettingRouts.onGenerateInitialRoutes,
            );

      },
    );
      },
    );
  }
}