import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_App-Bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 150,
            child: customAppBar(
              title: "Edit Note",
              icon: Icons.check,
            ),
          ),
        ],
      ),
    );
  }
}
