import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'home_screen_two_controller.dart';

class HomeScreenTwo extends StatelessWidget {
  const HomeScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {

   // HomeScreenTwoController homeScreenTwoController = Get.put(HomeScreenTwoController());
    HomeScreenTwoController homeScreenTwoController = Get.find(tag: 'HomeScreenTwoController');

    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Controller'),
      ),
      body: SafeArea(
        child: Column(
          children: [
             Obx(() => Container(
               margin: const EdgeInsets.only(top: 20),
               height: 100,
               width: 100,
               color: Colors.red.withOpacity(homeScreenTwoController.opacity.value),
             ),),
            Obx(() => Slider(value: homeScreenTwoController.opacity.value, onChanged: (value){
              homeScreenTwoController.changeOpacity(value);
            }),),

          ],),
      ),
    );
  }
}
