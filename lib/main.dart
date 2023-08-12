import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_home_view.dart';

void main() {
  runApp(const MyNotsApp());
}

class MyNotsApp extends StatelessWidget {
  const MyNotsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      
      home: const NotesHomeView(),
    );
  }
}
