import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GreetingChanger extends StatefulWidget {
  @override
  _GreetingChangerState createState() => _GreetingChangerState();
}

class _GreetingChangerState extends State<GreetingChanger> {
  List<String> greetings = ['hi.', 'namaste.', 'hola.'];
  int currentIndex = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 2), (Timer t) {
      setState(() {
        currentIndex = (currentIndex + 1) % greetings.length;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      greetings[currentIndex],
      style: GoogleFonts.ibmPlexMono(fontSize: 50, color: Colors.white, fontWeight: FontWeight.w500),
    );
  }
}
