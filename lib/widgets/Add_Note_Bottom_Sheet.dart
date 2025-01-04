import 'package:flutter/material.dart';
import 'package:notesapp/widgets/Cutom_Text_Field.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CutomTextField(
            Hint: "Title",
          ),
          SizedBox(
            height: 15,
          ),
          CutomTextField(
            Hint: "contant",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
