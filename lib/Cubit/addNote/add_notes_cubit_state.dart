// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
part of 'add_notes_cubit_cubit.dart';

@immutable
abstract class AddNotesCubitState {}

class AddNotesCubitInitial extends AddNotesCubitState {}

class AddNotesCubitLoading extends AddNotesCubitState {}

class AddNotesCubitSuccess extends AddNotesCubitState {}

class AddNotesCubitFailure extends AddNotesCubitState {
  final String err;
  AddNotesCubitFailure({
    required this.err,
  });
}
