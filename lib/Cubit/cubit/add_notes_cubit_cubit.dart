import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:last_pro/const.dart';
import 'package:last_pro/models/notes_model.dart';
import 'package:meta/meta.dart';

part 'add_notes_cubit_state.dart';

class AddNotesCubitCubit extends Cubit<AddNotesCubitState> {
  AddNotesCubitCubit() : super(AddNotesCubitInitial());

  AddNote(notes_model note) async {
    emit(AddNotesCubitLoading());
    try {
      var notesBox = Hive.box<notes_model>(kNotesBox);
      emit(AddNotesCubitSuccess());
      await notesBox.add(note);
    } catch (e) {
      emit(AddNotesCubitFailure(err: e.toString()));
    }
  }
}
