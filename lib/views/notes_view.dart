import 'package:flutter/material.dart';
import 'package:notesapp/widgets/Notes_View_Body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:NotesViewBody() ,
    );
  }
}

