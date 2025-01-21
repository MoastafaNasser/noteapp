part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

class NotesInitial extends NotesState {}

class Notesloading extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NoteModel>notes ;

  NotesSuccess({required this.notes});
}

class NotesFailure extends NotesState {
  final String errmassage;

  NotesFailure(this.errmassage);
}
