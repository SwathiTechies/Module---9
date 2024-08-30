import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:module_9/state_management/count_getx.dart';
import 'package:module_9/state_management/getx.dart';
import 'package:module_9/state_management/provider.dart';
import 'package:module_9/state_management/splash_screen.dart';
import 'package:provider/provider.dart';

import 'http_request/fetch_data.dart';
//Provider
    // void main() {
    //   runApp(ChangeNotifierProvider(
    //       create: (context) => Counter(),
    //       child: MyApp()));
    // }

    // class MyApp extends StatelessWidget {
    //   const MyApp({super.key});
    //   @override
    //   Widget build(BuildContext context) {
    //     return MaterialApp(
    //       home: ProviderApp(),
    //     );
    //   }
    // }

    class Counter with ChangeNotifier {
      int _count = 0;

      int get count => _count;

      void increment() {
        _count++;
        notifyListeners(); // Notifies widgets that are listening to rebuild
      }
    }


//getx
//     void main() {
//       Get.put(CounterController());
//       runApp(MyApp());
//     }
//     class MyApp extends StatelessWidget {
//       const MyApp({super.key});
//       @override
//       Widget build(BuildContext context) {
//         return GetMaterialApp(
//           home: GetApp()
//         );
//       }
//     }
//

//

    // HTTP
void main(){
      runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       home:  SplashScreen()
    );
  }
}


