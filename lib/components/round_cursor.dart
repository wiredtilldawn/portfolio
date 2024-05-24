import 'package:flutter/material.dart';

class CustomCursorWrapper extends StatelessWidget {
  final Widget child;

  const CustomCursorWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.precise, // Change cursor to round shape
      child: child,
    );
  }
}
