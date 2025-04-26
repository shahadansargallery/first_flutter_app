import 'package:blinkit_app/firstScreen.dart';
import 'package:blinkit_app/secondScreen.dart';
import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget {
  final String name;
  const Secondscreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          header(),
          bodyWidget(context), // Pass context here
        ],
      ),
    );
  }

  AppBar header() {
    return (AppBar(title: Text("Details Page")));
  }

  Center bodyWidget(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(name),
      ),
    );
  }
}
