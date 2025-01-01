import 'package:flutter/material.dart';
import 'package:new_project/note_screen.dart';
import 'package:new_project/profile.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  List pages=[NoteScreen(),
  Profilepage()];
  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.note),label: "note"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),

        

      ],onTap:(value) {
        setState(() {
          selectedIndex=value;
        });
      },
      ),
    );

  }
}