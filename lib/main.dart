import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:last_pro/Cubit/notes/notes_cubit.dart';
import 'package:last_pro/const.dart';
import 'package:last_pro/models/notes_model.dart';
import 'package:last_pro/simple_bloc_observer.dart';
import 'package:last_pro/views/note_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(notesmodelAdapter());
  await Hive.openBox<notes_model>(kNotesBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const Note_App());
}

// ignore: camel_case_types
class Note_App extends StatelessWidget {
  const Note_App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        home: const Note_views(),
      ),
    );
  }
}
