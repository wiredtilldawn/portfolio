import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/round_cursor.dart';
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
    return CustomCursorWrapper(
      child: Scaffold(
        backgroundColor: Colors.black,

        body:  ListView(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 300.0, top: 60.0),
                child: GreetingChanger(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 300.0,),
                child: Text(
                  "i'm",
                  style: GoogleFonts.ibmPlexMono(fontSize: 50, color: Colors.white, fontWeight: FontWeight.w500),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 300.0,),
                child: Text(
                  "tarun.",
                  style: GoogleFonts.ibmPlexMono(fontSize: 50, color: Colors.white, fontWeight: FontWeight.w500),

                ),
              ),

              Container(
                padding: const EdgeInsets.only(left: 300.0, top: 10, right: 400),
                child: Text(
                  "I'm a software developer dedicated to crafting impactful solutions that elegantly address users' needs. With a focus on simplicity and efficiency, I integrate elements of personal life into my designs, prioritizing user experience and rights to create meaningful interactions. My work captures the essence of life by highlighting what's essential, resonating with users on both practical and emotional levels.",
                  style: GoogleFonts.ibmPlexMono(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w400),
                
                ),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 300.0, top: 40,),
                  child: OutlinedButton(
                      onPressed: () {
                        print('Button tapped');
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.transparent, // Background color of button
                        side: BorderSide(color: Colors.white, width: 1), // Border color and width
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30), // Cylindrical shape
                        ),
                      ),

                      child: Text(
                        'Say hi.',
                        style: GoogleFonts.ibmPlexMono(
                          color: Colors.white, // Text color
                          fontSize: 16,
                        )
                      ),
                    ),
                ),
              ),










            ],),
      ),
    );
  }
}
