import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last_pro/Cubit/addNote/add_notes_cubit_cubit.dart';
import 'package:last_pro/Cubit/notes/notes_cubit.dart';
import 'package:last_pro/views/widgets/AddNoteForm.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesCubitState>(
        listener: (context, state) {
          if (state is AddNotesCubitFailure) {}
          if (state is AddNotesCubitSuccess) {
            Navigator.pop(context);
            BlocProvider.of<NotesCubit>(context).fetchNotes();
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesCubitLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
