import 'package:get/get.dart';

class HomePageController extends GetxController {
   RxInt  counter = 0.obs;
   void increment(){
    counter++;
  
   }
      void decrement(){
    counter--;
 
   }
  
}