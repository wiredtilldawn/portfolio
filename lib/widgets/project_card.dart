import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  final Map<String, String> project;

  ProjectCard({required this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade900,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project['name']!,
              style: GoogleFonts.ibmPlexMono(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              project['description']!,
              style: GoogleFonts.ibmPlexMono(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                _launchURL(project['url']!);
              },
              child: Text(
                'Learn More',
                style: GoogleFonts.ibmPlexMono(
                  fontSize: 15,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

