import 'package:blinkit_app/secondScreen.dart';
import 'package:flutter/material.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: header(),
      body: Center(child: Text("Shahad Tuglak")),
      bottomNavigationBar: bottomNavigationBar(context),
    );
  }

  AppBar header() {
    return (AppBar(title: Text("Hello Developers")));
  }

  BottomNavigationBar bottomNavigationBar(BuildContext context) {
    return (BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_off_outlined),
          label: "Profile",
        ),
      ],
    ));
  }
}
