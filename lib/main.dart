import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpractice/routes/page_three.dart';
import 'package:getxpractice/routes/page_two.dart';
import 'getx_controller/favourite_added.dart';
import 'getx_controller/favourite_controller.dart';
import 'getx_controller/home_screen_two.dart';
import 'getx_controller/home_screen_two_controller.dart';

void main() {

  Get.put(HomeScreenTwoController(), tag: 'HomeScreenTwoController');
  Get.put(FavouriteController(), tag: 'Favourite');

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Favourite(),
      getPages: [
           GetPage(name: '/', page:()=> const Favourite()),
           GetPage(name: '/two', page:()=> const PageTwo()),
           GetPage(name: '/three', page:()=> const PageThree()),


      ],

    );
  }
}
