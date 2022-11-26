import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homeScreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () async {
      Get.to(const HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            SizedBox(
              height: 150,
              width: 150,
              child: Image(
                image: AssetImage(
                  'assets/splash.jpg',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              child: Text(
                "Cars Show",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
