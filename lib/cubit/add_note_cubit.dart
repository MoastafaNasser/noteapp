import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/models/note_models.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  AddNote(NoteModel note){

  }


}
