import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:last_pro/const.dart';
import 'package:last_pro/views/note_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const note_app());
}

class note_app extends StatelessWidget {
  const note_app({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
      home: const Note_views(),
    );
  }
}
