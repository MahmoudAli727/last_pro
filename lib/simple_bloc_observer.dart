// ignore_for_file: unnecessary_brace_in_string_interps, avoid_print

import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    print("change = $change");
  }

  @override
  void onClose(BlocBase bloc) {
    print("close = ${bloc}");
  }

  @override
  void onCreate(BlocBase bloc) {
    print("create = ${bloc}");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {}

  @override
  void onEvent(Bloc bloc, Object? event) {}

  @override
  void onTransition(Bloc bloc, Transition transition) {}
}
