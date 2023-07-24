import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'favourite_controller.dart';
import 'home_screen_two_controller.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {

   // FavouriteController favouriteController = Get.put(FavouriteController()); //(another way)

     FavouriteController favouriteController = Get.find(tag: 'Favourite');

    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Controller'),
      ),
      body: SafeArea(
        child:ListView.builder(
          itemCount:favouriteController.fruitsItems.value.length,
          itemBuilder: (context,index){
            return Card(
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: InkWell(
                  onTap: (){
                    print('on Tap works');
                    favouriteController.addToFavourite(favouriteController.fruitsItems.value[index].toString());
                  },
                  child: ListTile(
                    leading: Text(favouriteController.fruitsItems.value[index].toString()),
                    trailing: Obx(() => Icon(
                        favouriteController.favouriteItems.contains(favouriteController.fruitsItems.value[index].toString()) ? Icons.favorite : Icons.favorite_border_outlined),
                    ),
                  ),
                ),
              ),
            );
          },)

        ),
      );
  }
}
