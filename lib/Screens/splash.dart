import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:language_app/Screens/home.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          splashIconSize: 200,
          backgroundColor: const Color(0xffEEEBD6),
          splash: const CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage(
              "assets/images/splash/1.png",
            ),
          ),
          nextScreen: const HomeScreen()),
    );
  }
}
