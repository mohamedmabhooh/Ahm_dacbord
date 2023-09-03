import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class verifiction_code_controller extends GetxController{
  Timer? _timer;
  int remainSeconds = 1;
  final time = '00.00'.obs;
@override
void onReady(){
  _startTimer(14);
  super.onReady();
}

  _startTimer(int seconds){
    const duration = Duration(seconds: 1);
    remainSeconds = seconds;
    _timer = Timer.periodic(duration, (Timer timer) {
      if(remainSeconds==0){
        timer.cancel();
      }else{
        int minutes = remainSeconds~/60;
        int seconds = remainSeconds%60;
        time.value = minutes.toString().padLeft(2, "0")+":"+seconds.toString().padLeft(2, "0");
        remainSeconds--;
      }
    });
  }
}