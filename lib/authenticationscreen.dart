import 'package:flutter/material.dart';

class AuthenticateScreen extends StatefulWidget {
  const AuthenticateScreen({super.key});

  @override
  State<AuthenticateScreen> createState() => _AuthenticateScreenState();
}

class _AuthenticateScreenState extends State<AuthenticateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff47734D), // Replace with your desired background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: const Color(0xff77d706),
              radius: 90,
              child: Image.asset(
                'assets/images/go-green-logo.png',
                width: 110,
                height: 110,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Welcome to GOGREEN',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40), // Add some space between the CircleAvatar and the container
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xff47734D), // Replace with your desired container color
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    color: Colors.white, // White background color
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'Login with email',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black, // Text color on the white background
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text('OR', textAlign: TextAlign.center,style:TextStyle(color:Colors.white)),
                  const SizedBox(height: 16),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white, // Replace with your desired background color
                        radius: 24,
                        backgroundImage: AssetImage('assets/images/apple_logo.png'), // Replace with your Apple iOS logo image
                      ),
                      SizedBox(width: 16),
                      CircleAvatar(
                        backgroundColor: Colors.white, // Replace with your desired background color
                        radius: 24,
                        backgroundImage: AssetImage("assets/images/googleplus_logo.png"), // Replace with your Google Plus logo image
                      ),
                      SizedBox(width: 16),
                      CircleAvatar(
                        backgroundColor: Colors.white, // Replace with your desired background color
                        radius: 24,
                        backgroundImage: AssetImage('assets/images/twitter_logo.png'), // Replace with your Twitter logo image
                      ),
                      SizedBox(width: 16),
                      CircleAvatar(
                        backgroundColor: Colors.white, // Replace with your desired background color
                        radius: 24,
                        backgroundImage: AssetImage('assets/images/facebook_logo.png'), // Replace with your Facebook logo image
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
