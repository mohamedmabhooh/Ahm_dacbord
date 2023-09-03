import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ahm_dachbord/controller/RoutesController.dart';
class splash extends StatefulWidget {
  State<splash> createState() => _SplashState();
}
class _SplashState extends State<splash>{


  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds:2), () {
      Navigator.pushReplacementNamed(context, RoutesApp.login_screen);
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
          color: Color(0xffBF2132),
              child: Column(


                children: [
                  SizedBox(width: double.infinity,),
                  Spacer(),
                  Container(
                    height: 82.h,
                      width: 263.w,
                      child: Image.asset('assets/AHM-4.png')
                  ),
                  Spacer(),
                  Padding(padding: EdgeInsets.only(bottom: 18.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/category-2.png'),
                        SizedBox(width: 3.w,),
                        Text('لوحة التحكم',style: TextStyle(
                            color: Colors.white,
                            fontSize: 22
                        ),)
                      ],) ,
                  )




                ],

      ),
      ),
    );
  }
}
//import '../../Controller/RoutesController.dart';