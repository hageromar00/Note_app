import 'package:flutter/material.dart';
import 'package:note_app/views/note_view.dart';

void main() {
  runApp(const MyApp());
}

//flutter packages pub run build_runner build
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: NoteViews(),
    );
  }
}
