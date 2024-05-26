import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SquareButtonWidget extends StatelessWidget {
  final IconData icon;
  final String url;
  final Color color;

  SquareButtonWidget({
    required this.icon,
    required this.url,
    required this.color,
  });

  void _launchURL() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchURL,
      child: Container(
        width: 200,
        height: 150,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}