import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';


class GetApp extends StatefulWidget {
  const GetApp({super.key});

  @override
  State<GetApp> createState() => _GetAppState();
}

class _GetAppState extends State<GetApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Example')),
      body: Center(
        child: Obx(() {
          return Text('Clicks: ${Get.find<CounterController>().count}');
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.find<CounterController>().increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}


class CounterController extends GetxController {
  var count = 0.obs;

  void increment() => count++;
}