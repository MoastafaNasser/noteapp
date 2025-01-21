import 'package:flutter/material.dart';
import 'package:notesapp/widgets/Add_Note_Bottom_Sheet.dart';
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
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
                
              ),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              },
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
      body: NoteViewbody(),
    );
  }
}

