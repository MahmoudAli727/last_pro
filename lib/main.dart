import 'package:flutter/material.dart';
import 'package:last_pro/views/note_view.dart';

void main() {
  runApp(const note_app());
}

class note_app extends StatelessWidget {
  const note_app({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: const Note_views(),
    );
  }
}
