// import 'package:flutter/material.dart';
// void main(){
//   runApp(const First());
// }
// class First extends StatefulWidget {
//   const First({super.key});
//
//   @override
//   State<First> createState() => _FirstState();
// }
//
// class _FirstState extends State<First> {
//   int counter=0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.pinkAccent,
//           title: const Text('Coffee App'),
//           actions: [
//            MaterialButton(
//              onPressed: (){
//                setState(() {
//                  counter=0;
//                });
//              },
//            child: const Icon(Icons.refresh),
//            )
//           ],
//         ),
//         body: Center(
//           child: Text(counter.toString(),
//           style: const TextStyle(
//             fontSize: 30
//           )),
//         ),
//         floatingActionButton: MaterialButton(
//           onPressed: (){
//             setState(() {
//               counter++;
//             });
//           },
//         child: const Icon(Icons.add),),
//       ),
//     );
//   }
// }
//




import 'package:coffee_app/controllers/tapControllers.dart';
import 'package:coffee_app/dashatar.dart';
import 'package:coffee_app/launchpad.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'first.dart';
void main(){
  runApp(
      const GetMaterialApp(
        debugShowCheckedModeBanner: false,
          home: Launch()
  ));
}



class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    TapController controller= Get.put(TapController());
    return  Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                GetBuilder<TapController>(builder: (tapController){
                  return Container(
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
                  );
                }),
                GestureDetector(
                  onTap: (){
                    controller.increment();
                  },
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(
                        child: Text('Increase',
                          style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),
                        ),
                    ),
                  ),
                ),
              ],
            ),

            GestureDetector(
              onTap: (){
                Get.to(()=>const First());
              },
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: const Center(
                  child: Text('NEXT',
                    style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Obx(()=>Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child:  Center(
                    child: Text(controller.y.value.toString(),
                      style: const TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
                GestureDetector(
                  onTap: (){
                    controller.dec();
                  },
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(
                      child: Text('Decrease Y',
                        style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: const Center(
                  child: Text('TAP',
                    style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
