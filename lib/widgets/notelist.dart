import 'package:flutter/material.dart';
import 'package:last_pro/widgets/Note_View_itme.dart';

class noteList extends StatelessWidget {
  const noteList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Note_View_itme(),
        );
      },
    );
  }
}
