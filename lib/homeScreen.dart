import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'Assignment No 2',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.amber,
          leading: const BackButton(
            color: Colors.black, // <-- SEE HERE
          ),
        ),
        body: Center(
          child: Text(
            'Welcome to The World of Cars',
            style: TextStyle(
              color: Colors.amber,
            ),
          ),
        ));
  }
}
