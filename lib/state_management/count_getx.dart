import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    RxInt count = 0.obs;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => Text('Counter $count',style: TextStyle(color: Colors.green,fontSize: 30, fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            count.value++;
          }, child: Text('Increment'))
        ],
      ),
    );
  }
}
