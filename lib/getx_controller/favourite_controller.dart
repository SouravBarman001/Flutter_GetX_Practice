
import 'package:get/get.dart';

class FavouriteController extends GetxController{

  RxList<String> fruitsItems = ['Apple','Banana','Mango','Orange'].obs;
  RxList favouriteItems = [].obs;

  void addToFavourite(index){
     if(favouriteItems.contains(index)){
       print('remove favouriteItems');
       favouriteItems.remove(index);

     }else{
       print('added to favouriteItems');
       favouriteItems.add(index);
     }
  }
}