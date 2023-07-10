import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:last_pro/const.dart';
import 'package:last_pro/models/notes_model.dart';
import 'package:meta/meta.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<notes_model>? notes;
  void fetchNotes() {
    var notesBox = Hive.box<notes_model>(kNotesBox);
    notes = notesBox.values.toList();
  }
}
