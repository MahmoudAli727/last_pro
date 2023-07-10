import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last_pro/Cubit/addNote/add_notes_cubit_cubit.dart';
import 'package:last_pro/views/widgets/AddNoteForm.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesCubitState>(
        listener: (context, state) {
          if (state is AddNotesCubitFailure) {
            print("failed ${state.err}");
          }
          if (state is AddNotesCubitSuccess) {
            // Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesCubitLoading,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(child: AddNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
