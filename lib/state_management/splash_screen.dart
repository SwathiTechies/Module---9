import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'count_getx.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fectData();
  }

  Future<void> fectData() async {
    print('init data');
    await Future.delayed(Duration(seconds: 1));
    print('First Data');
    await Future.delayed(Duration(seconds: 1));
    print('Second Data');
    await Future.delayed(Duration(seconds: 1));
    Get.to(CounterApp());
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network('https://tse2.mm.bing.net/th?id=OIP.XrGVljajcLZhvJGUD-Sc7gHaE7&pid=Api&P=0&h=180',fit: BoxFit.cover,),
      ),
    );
  }
}
