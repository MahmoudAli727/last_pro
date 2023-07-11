// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:last_pro/models/notes_model.dart';
import 'package:last_pro/views/widgets/Edit_view_Body.dart';

class Edit_view extends StatelessWidget {
  const Edit_view({
    Key? key,
    required this.note,
  }) : super(key: key);
  final notes_model note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Edit_view_Body(
        note: note,
      ),
    );
  }
}
