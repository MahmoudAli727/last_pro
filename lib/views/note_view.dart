import 'package:flutter/material.dart';
import 'package:last_pro/widgets/note_view_body.dart';

class Note_views extends StatelessWidget {
  const Note_views({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: note_view_body(),
    );
  }
}
