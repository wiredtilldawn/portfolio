import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/round_cursor.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/greeting_changer.dart';
import '../widgets/project_card.dart';
import '../widgets/project_dropdown.dart';
import '../widgets/square_button.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title,});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AutoScrollController _scrollController = AutoScrollController();

  final List<Map<String, String>> projects = [
    {
      'name': 'need',
      'description': 'Need is a compassionate Flutter application integrated with Firebase and Git, dedicated to addressing the needs of the underprivileged. Leveraging Flutter versatile UI capabilities, Firebase real-time database, and Git for version control, Need provides a user-friendly platform for connecting donors with those in need. With its seamless integration of technology and humanitarianism, Need aims to streamline aid distribution processes, ensuring efficient and transparent assistance to the needy.',
      'url': 'https://github.com/wiredtilldawn/need',
    },
    {
      'name': 'need',
      'description': 'Need is a compassionate Flutter application integrated with Firebase and Git, dedicated to addressing the needs of the underprivileged. Leveraging Flutter versatile UI capabilities, Firebase real-time database, and Git for version control, Need provides a user-friendly platform for connecting donors with those in need. With its seamless integration of technology and humanitarianism, Need aims to streamline aid distribution processes, ensuring efficient and transparent assistance to the needy.',
      'url': 'https://github.com/wiredtilldawn/need',
    },
    {
      'name': 'need',
      'description': 'Need is a compassionate Flutter application integrated with Firebase and Git, dedicated to addressing the needs of the underprivileged. Leveraging Flutter versatile UI capabilities, Firebase real-time database, and Git for version control, Need provides a user-friendly platform for connecting donors with those in need. With its seamless integration of technology and humanitarianism, Need aims to streamline aid distribution processes, ensuring efficient and transparent assistance to the needy.',
      'url': 'https://github.com/wiredtilldawn/need',
    },
    {
      'name': 'need',
      'description': 'Need is a compassionate Flutter application integrated with Firebase and Git, dedicated to addressing the needs of the underprivileged. Leveraging Flutter versatile UI capabilities, Firebase real-time database, and Git for version control, Need provides a user-friendly platform for connecting donors with those in need. With its seamless integration of technology and humanitarianism, Need aims to streamline aid distribution processes, ensuring efficient and transparent assistance to the needy.',
      'url': 'https://github.com/wiredtilldawn/need',
    },
  ];

  Map<String, String>? selectedProject;

  void onProjectSelected(Map<String, String> project) {
    setState(() {
      selectedProject = project;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return CustomCursorWrapper(
      child: Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Tarun Srivastava", style: GoogleFonts.ibmPlexMono(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500),),
            ],
          ),
        ),

        body:  Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: <Widget>[
                    
              //introduction block
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
                    
                    
              //write block
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
                    
              //articles button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: (screenWidth > 600) ? 3 : 1, // Adjust number of columns based on screen width
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0,
                    childAspectRatio: 1,
                  ),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    final items = [
                      {
                        'icon': Icons.tv,
                        'url': 'https://medium.com/@tarunsri0017/exploring-the-future-with-visionos-a-personal-journey-into-the-next-generation-of-augmented-5fd2c58bdffb',
                        'label': 'VisionOS',
                      },
                      {
                        'icon': Icons.minimize,
                        'url': 'https://medium.com/@tarunsri0017/minimalism-how-to-declutter-your-life-for-greater-happiness-61900010e540',
                        'label': 'Minimalism',
                      },
                      {
                        'icon': Icons.crisis_alert_rounded,
                        'url': 'https://medium.com/top-designers-portfolio/4-amazing-portfolios-of-apple-designers-95eb496ea69f',
                        'label': 'Design Portfolios',
                      },
                    ];
                    
                    return Column(
                      children: [
                        Flexible(
                          child: SquareButtonWidget(
                            icon: items[index]['icon'] as IconData,
                            url: items[index]['url'] as String,
                            color: Colors.grey.shade900,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          items[index]['label'] as String,
                          style: GoogleFonts.ibmPlexMono(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
                    
              SizedBox(height: 80),
                    
                    
             Padding(
               padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   //project title
                   ProjectDropdown(
                     projects: projects,
                     onProjectSelected: onProjectSelected,
                   ),
                    
                   //project dropdown
                   Text(
                     "Projects",
                     style: GoogleFonts.ibmPlexMono(fontSize: 30, color: Colors.white, fontWeight: FontWeight.w500),
                    
                   ),
                 ],
               ),
             ),
                    
              SizedBox(height: 20),
                    
              //show project
              if (selectedProject != null)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
                  child: ProjectCard(project: selectedProject!),
                ),
                    
                    
              SizedBox(height: 20),
// Four text buttons
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text button 1
                      TextButton(
                        onPressed: () {
                          launch('https://github.com/wiredtilldawn/need1');
                        },
                        child: Text(
                          'GitHub',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      // Text button 2
                      TextButton(
                        onPressed: () {
                          launch('https://github.com/wiredtilldawn/need2');
                        },
                        child: Text(
                          'GitHub',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      // Text button 3
                      TextButton(
                        onPressed: () {
                          launch('https://github.com/wiredtilldawn/need3');
                        },
                        child: Text(
                          'GitHub',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      // Text button 4
                      TextButton(
                        onPressed: () {
                          launch('https://github.com/wiredtilldawn/need4');
                        },
                        child: Text(
                          'GitHub',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),

                    
              
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
            ],),
        ),
      ),
    );
  }
}
