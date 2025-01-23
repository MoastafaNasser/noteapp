import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/models/note_models.dart';
import 'package:notesapp/widgets/contstant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchallNotes() {
    var notesBox = Hive.box<NoteModel>(kprimaryBox);
    notes = notesBox.values.toList();
  }
}
