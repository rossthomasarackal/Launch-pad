import 'package:get/get.dart';

class TapController extends GetxController{
  int _x=0;
  int get x=>_x;
  RxInt _y=0.obs;
  RxInt get y=>_y;


  void increment(){
    _x++;
    update();
  }
  void decrement(){
    _x--;
    update();
  }



 void inc(){
    _y.value++;
 }
 void dec(){
    _y.value--;
 }
}