import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/round_cursor.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import '../widgets/greeting_changer.dart';
import '../widgets/square_button.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title,});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AutoScrollController _scrollController = AutoScrollController();


  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return CustomCursorWrapper(
      child: Scaffold(
        backgroundColor: Colors.black,

        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Tarun Srivastava", style: GoogleFonts.ibmPlexMono(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),),
            ],
          ),
        ),

        body:  ListView(
            children: [

              Padding(
                padding: EdgeInsets.only(right: screenWidth * 0.2,left: screenWidth * 0.2,top: screenHeight * 0.10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GreetingChanger(),
                    Text(
                      "i'm",
                      style: GoogleFonts.ibmPlexMono(fontSize: 50, color: Colors.white, fontWeight: FontWeight.w500),

                    ),
                    Text(
                      "tarun.",
                      style: GoogleFonts.ibmPlexMono(fontSize: 50, color: Colors.white, fontWeight: FontWeight.w500),

                    ),

                    SizedBox(
                      height: 20,
                    ),


                    Container(
                      child: Text(
                        "I'm a software developer dedicated to crafting impactful solutions that elegantly address users' needs. With a focus on simplicity and efficiency, I integrate elements of personal life into my designs, prioritizing user experience and rights to create meaningful interactions. My work captures the essence of life by highlighting what's essential, resonating with users on both practical and emotional levels.",
                        style: GoogleFonts.ibmPlexMono(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w400),

                      ),
                    ),

                    SizedBox(
                      height: 40,
                    ),

                    OutlinedButton(
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
                  ],
                ),
              ),

              SizedBox(
                height: 50,
              ),

              Padding(
                padding: EdgeInsets.only(right: screenWidth * 0.2,left: screenWidth * 0.2,top: screenHeight * 0.10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Write",
                      style: GoogleFonts.ibmPlexMono(fontSize: 40, color: Colors.white, fontWeight: FontWeight.w500),

                    ),

                    SizedBox(
                      height: 20,
                    ),


                    Container(
                      child: Text(
                        "As a software developer, I regularly document my learning experiences and product developments. I also enjoy sharing my expertise to enlighten others. My innovative approach to writing blends technical insights with practical advice, aiming to inspire and inform. You can find some of my latest work below.",
                        style: GoogleFonts.ibmPlexMono(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w400),

                      ),
                    ),

                    SizedBox(
                      height: 40,
                    ),


                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(right: screenWidth * 0.2,left: screenWidth * 0.2,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SquareButtonWidget(
                      icon: Icons.link,
                      url: 'https://medium.com/top-designers-portfolio/4-amazing-portfolios-of-apple-designers-95eb496ea69f',
                      color: Colors.grey.shade900,
                    ),
                    SquareButtonWidget(
                      icon: Icons.link,
                      url: 'https://medium.com/top-designers-portfolio/4-amazing-portfolios-of-apple-designers-95eb496ea69f',
                      color: Colors.grey.shade900,
                    ),
                    SquareButtonWidget(
                      icon: Icons.link,
                      url: 'https://medium.com/top-designers-portfolio/4-amazing-portfolios-of-apple-designers-95eb496ea69f',
                      color: Colors.grey.shade900,
                    ),
                  ],
                ),
              ),













            ],),
      ),
    );
  }
}
