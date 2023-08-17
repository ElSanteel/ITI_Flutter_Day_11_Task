import 'package:flutter/material.dart';
import 'splashscreen1_and_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen1(image:"assets/images/GOGREEN.png",color:Color(0xff264131))
    );
  }
}


