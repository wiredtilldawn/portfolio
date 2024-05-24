import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../widgets/greeting_changer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AutoScrollController _scrollController = AutoScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Tarun Srivastava", style: GoogleFonts.roboto(fontSize: 15, color: Colors.white),)

          ],
        ),

      ),

      body: Center(
        child: GreetingChanger(

        ),
      ),



    );
  }
}
