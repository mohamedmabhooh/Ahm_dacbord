import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widjet/MyTextFormField.dart';
class new_password extends StatelessWidget {
  const new_password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(height: 52.h,width: double.infinity,),
    Container(
    height: 38,
    width: 38,
    decoration: BoxDecoration(
    color: Color(0xffF2F2F2),
    borderRadius: BorderRadius.circular(40)
    ),
    child: Icon(Icons.arrow_back,color: Colors.black,),
    ),
    SizedBox(height: 25.h,),
    Text('إعادة تعيين كلمة المرور',style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold
    ),),
    SizedBox(height: 14,),
      Text('قم بتعيين كلمة المرور الجديدة لحسابك حتى تتمكن من\nتسجيل الدخول والوصول إلى الميزات',style: TextStyle(
        fontSize: 16,

      ),),
      SizedBox(height: 18,),
      Text('كلمة المرور الجديدة',style: TextStyle(
          fontSize: 16,
        fontWeight: FontWeight.bold
      ),),
      MyTextFormField(hintText:'ادخل كلمة المرور',isPassword:true,isEmail: false, PrefexIecon:Icons.lock),
      SizedBox(height: 28,),
      ElevatedButton(
        onPressed: () async {
          Navigator.pushNamed(context, '/sucsses');
        },
        style: ElevatedButton.styleFrom(
            minimumSize: Size(343.w, 48.h),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r)),
            backgroundColor: Color(0xffBF2132)),
        child: Text(
          'تعيين كلمة المرور',
          style: TextStyle(
              fontSize: 18.sp,
              fontFamily: 'Arial',
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),

    ]))
    );
  }
}
