// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last_pro/Cubit/notes/notes_cubit.dart';
import 'package:last_pro/models/notes_model.dart';
import 'package:last_pro/views/widgets/Note_View_itme.dart';

class noteList extends StatelessWidget {
  const noteList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<notes_model> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Note_View_itme(
                  note: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
