import 'package:flutter/material.dart';

///getx state management and getx life cycle
// class MyApp extends StatelessWidget {
//   MyControler myController = Get.put(MyControler());
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       home:Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               GetBuilder<MyControler>(
//                   // initState:(data)=> myController.increment,
//                 // dispose:(_)=> myController.cleanUpTask,
//                 builder:(controller){
//                     return Text("The value is ${controller.count}",
//                     style: TextStyle(
//                       fontSize: 20
//                     ),
//                     );
//                 },
//
//               ),
//               // GetX<MyControler>(
//               //   init:MyControler(),
//               //   builder:(controller){
//               //     //return Text("the value is ${myController.count}");
//               //     return Text("the value is ${controller.count}");
//               //   }
//               //
//               // ),
//
//               40.vertical,
//               GestureDetector(
//                 child: Container(
//                   color:Colors.pink,
//                   child: Text("Increment",
//                   style: TextStyle(
//                     color:Colors.black,
//                     fontSize: 20
//                   ),
//                   ),
//                 ),
//                 onTap: (){
//                   myController.increment();
//                  // Get.find<MyControler>().increment();
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
