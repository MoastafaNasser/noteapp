import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/cubit/add_note_cubit.dart';
import 'package:notesapp/models/note_models.dart';
import 'package:notesapp/views/notes_view.dart';
import 'package:notesapp/widgets/contstant.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(kprimaryBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: "Poppins",
        ),
        home: NotesView(),
      ),
    );
  }
}
