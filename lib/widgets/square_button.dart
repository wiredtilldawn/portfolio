import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SquareButtonWidget extends StatefulWidget {
  final IconData icon;
  final String url;
  final Color color;
  final Color hoverColor; // New parameter for hover color

  SquareButtonWidget({
    required this.icon,
    required this.url,
    required this.color,
    this.hoverColor = Colors.grey, // Default hover color
  });

  @override
  _SquareButtonWidgetState createState() => _SquareButtonWidgetState();
}

class _SquareButtonWidgetState extends State<SquareButtonWidget> {
  bool _isHovered = false;

  void _launchURL() async {
    if (await canLaunch(widget.url)) {
      await launch(widget.url);
    } else {
      throw 'Could not launch ${widget.url}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _launchURL,
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: _isHovered ? widget.hoverColor : widget.color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Icon(
              widget.icon,
              color: Colors.blue,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
