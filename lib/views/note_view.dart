import 'package:flutter/material.dart';
import 'package:last_pro/widgets/AddNoteButton.dart';
import 'package:last_pro/widgets/note_view_body.dart';

class Note_views extends StatelessWidget {
  const Note_views({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return AddNoteButton();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: note_view_body(),
    );
  }
}
