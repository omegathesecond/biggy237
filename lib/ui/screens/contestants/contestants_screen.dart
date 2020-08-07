import 'package:biggy237/style.dart';
import 'package:flutter/material.dart';

class ContestantScreen extends StatefulWidget {
  @override
  _ContestantScreenState createState() => _ContestantScreenState();
}

class _ContestantScreenState extends State<ContestantScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(regularPadding),
      child: Container(
        height: 350,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueGrey, Colors.white],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
            borderRadius: BorderRadius.circular(16.0)),
        child: Stack(
          children: [
            ClipRect(
              child: Image.asset("assets/images/test.png"),
            ),
            Positioned(
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.only(left: largePadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Biggy237"),
                    Text("Contestant: No# 40"),
                    Text("MC Dibenja"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
