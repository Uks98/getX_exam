import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_exam/data/animal.dart';

import 'data/state_ch.dart';


class GetPage extends StatelessWidget {
   GetPage({Key? key}) : super(key: key);
  final Change change = Get.put(Change());
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          change.changeInfo();
        },
        child: Icon(Icons.add),
      ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetX<Change>(builder: (_)=>textContainer(Colors.brown, change.ani.value.name)),
          Obx(() => textContainer(Colors.teal, change.ani.value.age.toString()))
        ],
      ),
    ),
    );
  }
  Widget textContainer(Color color,String value){
    return Container(
      color: color,
      width: 200,
      height: 200,
      child: Text(value,style: TextStyle(color: Colors.white,fontSize: 30),textAlign: TextAlign.center,),
    );
  }
}

