import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notesapp/views/notes_view.dart';
import 'package:notesapp/widgets/contstant.dart';

void main() async {
  await Hive.initFlutter();

  var Box = await Hive.openBox(kprimaryBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Poppins",
      ),
      home: NotesView(),
    );
  }
}
