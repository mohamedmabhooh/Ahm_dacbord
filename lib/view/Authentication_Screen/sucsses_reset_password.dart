import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class sucsses extends StatelessWidget {
  const sucsses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Image.asset('assets/Group 75822.png'),
          Text('تم تعيين كلمة المرور',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
          Text('يمكنك الأن تسجيل الدخول إلى حسابك ',style: TextStyle(fontSize: 18),),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
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
          ),
          SizedBox(height: 28,),
        ],
      ),
    );
  }
}
