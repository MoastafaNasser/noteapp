import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/models/note_models.dart';
import 'package:notesapp/widgets/contstant.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  AddNote(NoteModel note) async {
    try {
      emit(AddNoteLoading());
      var noteBox = Hive.box<NoteModel>(kprimaryBox);
      emit(AddNoteSuccess());
      await noteBox.add(note);
    }  catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
