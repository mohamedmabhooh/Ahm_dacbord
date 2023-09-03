import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../Controller/RoutesController.dart';
import '../../controller/Authentication_controller/verifiction_code_controller.dart';
class verifiction_code extends GetView<verifiction_code_controller> {
  const verifiction_code({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 52.h,width: double.infinity,),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/new_password');
              },
              child: Container(
                height: 38,
                width: 38,
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(40)
                ),
                child: Icon(Icons.arrow_back,color: Colors.black,),
              ),
            ),
            SizedBox(height: 25.h,),
            Text('تأكيد رقم هاتفك',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 14,),

            Row(
              children: [
                Text('أدخل رمز التحقق المرسل إلى '),
                Text('+970******456'),
              ],
            ),
            SizedBox(height: 24.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 47.w,
                  height: 50,

                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black),
                      ),
                      focusedBorder:
                      UnderlineInputBorder(
                        borderSide: BorderSide(
                            color:
                            Colors.black),),





                    ),

                    cursorColor: Colors.black,
                    style: Theme.of(context).textTheme.headlineSmall,
                    onChanged: (value){
                      if(value.length ==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,


                    ],
                  ),

                ),
                SizedBox(
                  width: 47.w,
                  height: 50,
                  child: TextFormField(
                    style: Theme.of(context).textTheme.headlineSmall,
                    onChanged: (value){
                      if(value.length ==1){
                        FocusScope.of(context).nextFocus();
                      }

                    },
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,


                    ],
                  ),
                ),
                SizedBox(
                  width: 47.w,
                  height: 50,
                  child: TextFormField(
                    style: Theme.of(context).textTheme.headlineSmall,
                    onChanged: (value){
                      if(value.length ==1){
                        FocusScope.of(context).nextFocus();
                      }

                    },
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,


                    ],
                  ),
                ),
                SizedBox(
                  width: 47.w,
                  height: 50,
                  child: TextFormField(
                    style: Theme.of(context).textTheme.headlineSmall,
                    onChanged: (value){
                      if(value.length ==1){
                        FocusScope.of(context).nextFocus();
                      }

                    },
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,


                    ],
                  ),
                )

              ],
            ),
            SizedBox(height: 28.h,),
            Obx(()=>Row(
              children: [
           if(controller.time.value != '00:01')
                Text('إعادة إرسال الرمز في'),
            if(controller.time.value != '00:01')
                Text('${controller.time.value}', style: TextStyle(
                  fontSize: 15, color: Colors.black,
                ),),
           if(controller.time.value == '00:01')
           Column(children: [
             Row(children: [
                 Image.asset('assets/error_outlined.png'),
                 SizedBox(width: 8,),
                 Text('الرمز المدخل خطأ '),
             ],),
             SizedBox(height: 28,),
               Text('إعادة إرسال الرمز',style: TextStyle(fontSize: 15,color: Color(0xffBF2132)),)
           ],),


              ],
            ),
            ),


          ],
        ),
      ),
    );
  }
}

