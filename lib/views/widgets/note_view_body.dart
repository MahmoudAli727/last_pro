// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last_pro/Cubit/notes/notes_cubit.dart';
import 'package:last_pro/views/widgets/CustomAppbar.dart';
import 'package:last_pro/views/widgets/notelist.dart';

class note_view_body extends StatefulWidget {
  const note_view_body({super.key});

  @override
  State<note_view_body> createState() => _note_view_bodyState();
}

class _note_view_bodyState extends State<note_view_body> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const CustomerAppBar(
            text: "Notes",
            icon: Icons.search,
          ),
          Expanded(
              child: Container(
            child: const noteList(),
          )),
        ],
      ),
    );
  }
}
