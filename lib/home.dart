import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [header(), categories()]),
    );
  }

  Column categories() {
    return (Column(
      children: [
        SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(children: [Text("Categories")]),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.heart_broken_outlined, size: 30, color: Colors.red),
            Icon(Icons.medication_liquid_rounded, size: 30, color: Colors.red),
            Icon(Icons.local_hospital, size: 30, color: Colors.red),
            Icon(Icons.timelapse_outlined, size: 30, color: Colors.red),
          ],
        ),
      ],
    ));
  }

  Container header() {
    return Container(
      color: Color(0xff51A8FF),
      height: 350,
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hi, Edi",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.notifications_active_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Let's find\nyour doctor!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              filled: true,
              prefixIcon: Icon(Icons.search, color: Colors.black, size: 25),
              fillColor: Colors.white,
              hintText: "Search here...",
              hintStyle: TextStyle(fontWeight: FontWeight.w400),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
