import 'package:apifetch/presentation/screens/data_screen.dart';
import 'package:apifetch/presentation/screens/input_screen.dart';
import 'package:apifetch/presentation/screens/rick_and_morty_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 34,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DataScreen(),
                ),
              );
            },
            child: Text(
              "Get Data Using API",
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => InputScreen()));
              },
              child: Text("Input Data")),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RickAndMortyScreen()));
              },
              child: Text("Rick and Morty Data"))
        ],
      ),
    );
  }
}
