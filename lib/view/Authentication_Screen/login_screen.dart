import 'package:flutter/material.dart';
import 'package:ahm_dachbord/view/widjet/MyTextFormField.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Controller/RoutesController.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
     padding: EdgeInsets.symmetric(horizontal: 16.w),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 72.h,),
          Row(
            children: [

              Text('أهلًا بك!',style: TextStyle(
                fontSize: 24
              ),),
              SizedBox(width: 12.w,),
              Image.asset('assets/waving-hand 1.png'),

            ],),
          SizedBox(height: 12.h,),
          Text('سجل دخولك و أبدء في متابعة النظام',style: TextStyle(
            fontSize: 16
          ),),
          SizedBox(height: 38,),
          Text('البريد الإلكتروني',style: TextStyle(
              fontSize: 16
          ),),
          MyTextFormField(hintText:'ادخل بريدك الإلكتروني',isPassword:false,isEmail: true,PrefexIecon:Icons.email_outlined),

          SizedBox(height: 18,),
          Text('كلمة المرور',style: TextStyle(
              fontSize: 16
          ),),
          MyTextFormField(hintText:'ادخل كلمة المرور',isPassword:true,isEmail: false, PrefexIecon:Icons.lock),
          Row(
            children: [
          Container(
            decoration: BoxDecoration(

            ),
            child: Checkbox(
            checkColor: Colors.white,
              activeColor: Color(0xffBF2132),
             value: isChecked,
            onChanged: (bool? value) {
             setState(() {
             isChecked = value!;
             });}
             ),
          ),
              Text('تذكرني',style: TextStyle(fontSize:16 , fontFamily: 'Tajawal',fontWeight: FontWeight.w500),),
              Spacer(),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, RoutesApp.forget_password);
                },
                child: Text('نسيت كلمة المرور',style: TextStyle(fontSize:16, fontFamily: 'Tajawal' ,
                    fontWeight: FontWeight.w500),),
              ),

            ],
          ),
          ElevatedButton(
            onPressed: () async {
            },
            style: ElevatedButton.styleFrom(
                minimumSize: Size(343.w, 48.h),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r)),
                backgroundColor: Color(0xffBF2132)),
            child: Text(
              'تسجيل الدخول',
              style: TextStyle(
                  fontSize: 18.sp,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),),

    );
  }
}
