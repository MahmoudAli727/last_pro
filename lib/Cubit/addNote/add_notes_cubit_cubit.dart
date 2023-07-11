// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names, unnecessary_import

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:last_pro/const.dart';
import 'package:last_pro/models/notes_model.dart';
import 'package:meta/meta.dart';

part 'add_notes_cubit_state.dart';

class AddNotesCubit extends Cubit<AddNotesCubitState> {
  AddNotesCubit() : super(AddNotesCubitInitial());
  Color color = const Color(0xffF44174);
  AddNote(notes_model note) async {
    note.color = color.value;
    emit(AddNotesCubitLoading());
    try {
      var notesBox = Hive.box<notes_model>(kNotesBox);
      await notesBox.add(note);
      emit(AddNotesCubitSuccess());
    } catch (e) {
      emit(AddNotesCubitFailure(err: e.toString()));
    }
  }
}
