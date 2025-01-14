import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_App-Bar.dart';

class NoteBodyView extends StatelessWidget {
  const NoteBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customAppBar(
          title: "Edit Note",
          icon: Icons.check,
        ),
      ],
    );
  }
}
