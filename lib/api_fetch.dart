import 'package:apifetch/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ApiFetch extends StatelessWidget {
  const ApiFetch({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Screen"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: HomeScreen(),
        ),
      ),
    );
  }
}
