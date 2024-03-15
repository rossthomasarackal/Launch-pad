import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/tapControllers.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller= Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        leading: MaterialButton(
          onPressed: (){
            Get.back();
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
     body: Container(
        height:double.maxFinite,
        width: double.maxFinite,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                GetBuilder<TapController>(
                  builder: (tapController)=>
                   Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:  Center(
                      child: Text(controller.x.toString(),
                        style: const TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                  controller.decrement();
                  },
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(
                      child: Text('Decrease',
                        style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
