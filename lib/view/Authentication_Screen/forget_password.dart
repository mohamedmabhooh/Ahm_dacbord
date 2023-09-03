import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Controller/RoutesController.dart';
class forget_password extends StatefulWidget {
  const forget_password({super.key});

  @override
  State<forget_password> createState() => _forget_passwordState();
}

class _forget_passwordState extends State<forget_password> {
  int selectedOption =0;
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
            Text('الحصول على الرمز لتسجيل الدخول',style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 25.h,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              Row(
                children: [
                  Text('إرسال الرمز عبر البريد الإلكتروني',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Radio(
                    value: 1,
                    groupValue: selectedOption,
                    activeColor: Color(0xffBF2132),
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                        print("Button value: $value");
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Text('e*******a@gmail.com',style: TextStyle(fontSize: 16),),
            ],),
            Divider(
              height: 32,
              thickness: 1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: [
                    Text('إرسال الرمز عبر رقم الهاتف',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    Spacer(),
                    Radio(
                      value: 0,
                      groupValue: selectedOption,
                      activeColor: Color(0xffBF2132),
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value!;
                          print("Button value: $value");
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Text('+970******456',style: TextStyle(fontSize: 16),),
              ],),
            Divider(
              height: 32,
              thickness: 1,
            ),
            SizedBox(height: 28.h,),
            ElevatedButton(
              onPressed: ()  {
                Navigator.pushNamed(context, '/verifiction_code');
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(343.w, 48.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r)),
                  backgroundColor: Color(0xffBF2132)),
              child: Text(
                'إرسال الرمز',
                style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
