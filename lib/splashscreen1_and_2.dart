import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen_and_login/const.dart';
import 'authenticationscreen.dart';
class SplashScreen1 extends StatefulWidget {
  final String image;
  final Color color;

  const SplashScreen1({super.key, required this.image, required this.color});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  void initState() {
    super.initState();
    if (isSplashFinished == false) {
      Timer(
          const Duration(seconds: 3),
              () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => const SplashScreen1(
                  image: "assets/images/backgroundpic.png",
                  color: Colors.white))));
    }
    if(isSplashFinished==true){
      Timer(
          const Duration(seconds: 3),
              () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => const AuthenticateScreen())));
    }
    isSplashFinished = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.color,
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              widget.image,
              fit: BoxFit.cover, // You can adjust the BoxFit property as needed
            ),
            const Positioned(
              top: 70, // Adjust the top offset as needed
              left: 16, // Adjust the left offset as needed
              child: Text(
                'Welcome',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 64, fontWeight: FontWeight.w600, color: Color(0xff2D6936), // Optional, you can set the text color here
                ),
              ),
            ),
            const Positioned(
              top: 160, // Adjust the top offset as needed
              left: 16, // Adjust the left offset as needed
              child: Text(
                "We're glad that \nyou are here",
                style: TextStyle(fontFamily: 'Poppins', fontSize: 30, fontWeight: FontWeight.w500, color: Color(0xff2D6936), // Optional, you can set the text color here
                ),
              ),
            ),
            Positioned(
              bottom: 90, // Adjust the bottom offset as needed
              right: 16, // Adjust the right offset as needed
              child: Container(
                margin: EdgeInsets.only(right: 10),
                width: 200,
                height: 80,
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center, // Center align the text inside the container
                decoration: BoxDecoration(
                  color: const Color(0xff47734D), // Background color of the container
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  "Let's get started",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
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
