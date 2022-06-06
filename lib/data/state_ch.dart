
import 'package:get/get.dart';
import 'package:getx_exam/data/animal.dart';

class Change extends GetxController{
  //계속해서 관찰
  final ani = Animal().obs;

  void changeInfo(){
    ani.update((val) {
      val?.name = "기린";
      val?.age+=3;
    });
  }
}