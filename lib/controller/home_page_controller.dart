import 'package:get/get.dart';

class HomePageController extends GetxController {
   int counter = 0;
   void increment(){
    counter++;
    update();
   }
      void decrement(){
    counter--;
    update();
   }
  
}