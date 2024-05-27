import 'package:flutter/material.dart';

class ProjectDropdown extends StatelessWidget {
  final List<Map<String, String>> projects;
  final void Function(Map<String, String>) onProjectSelected;

  ProjectDropdown({required this.projects, required this.onProjectSelected});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Map<String, String>>(
      dropdownColor: Colors.grey.shade900,
      icon: Icon(Icons.menu, color: Colors.white),
      items: projects.map((Map<String, String> project) {
        return DropdownMenuItem<Map<String, String>>(
          value: project,
          child: Text(
            project['name']!,
            style: TextStyle(color: Colors.white),
          ),
        );
      }).toList(),
      onChanged: (Map<String, String>? newValue) {
        if (newValue != null) {
          onProjectSelected(newValue);
        }
      },
    );
  }
}
