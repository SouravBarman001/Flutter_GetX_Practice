

import 'package:get/get.dart';

class HomeScreenTwoController extends GetxController{


  RxDouble opacity = 0.4905.obs;

  void changeOpacity(value){
    opacity.value = value;
    print(opacity.value);
  }

}