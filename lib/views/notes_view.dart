import 'package:flutter/material.dart';
import 'package:notesapp/widgets/Notes_View_Body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: FloatingActionButton(
          backgroundColor: Colors.greenAccent,
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
      body: NotesViewBody(),
    );
  }
}
