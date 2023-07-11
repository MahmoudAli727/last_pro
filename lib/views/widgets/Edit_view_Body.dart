// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types, non_constant_identifier_names, file_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last_pro/Cubit/notes/notes_cubit.dart';

import 'package:last_pro/models/notes_model.dart';
import 'package:last_pro/views/widgets/CustomAppbar.dart';
import 'package:last_pro/views/widgets/CustomTextField.dart';
import 'package:last_pro/views/widgets/EditColorlist.dart';

class Edit_view_Body extends StatefulWidget {
  const Edit_view_Body({
    Key? key,
    required this.note,
  }) : super(key: key);
  final notes_model note;

  @override
  State<Edit_view_Body> createState() => _Edit_view_BodyState();
}

class _Edit_view_BodyState extends State<Edit_view_Body> {
  String? title, Content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
          child: Column(children: [
        const SizedBox(
          height: 30,
        ),
        CustomerAppBar(
          text: "Edit Not",
          icon: Icons.check,
          onPressed: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.Subtitle = Content ?? widget.note.Subtitle;
            widget.note.save();
            Navigator.pop(context);
            BlocProvider.of<NotesCubit>(context).fetchNotes();
          },
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          Hint: widget.note.title,
          onChanged: (p0) {
            title = p0;
          },
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(
          Hint: widget.note.Subtitle,
          onChanged: (p0) {
            Content = p0;
          },
          maxlines: 5,
        ),
        const SizedBox(
          height: 20,
        ),
        EditColors_list(
          note: widget.note,
        )
      ])),
    );
  }
}
