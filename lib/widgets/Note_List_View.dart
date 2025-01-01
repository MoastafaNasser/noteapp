
import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_note_item.dart';

class noteListView extends StatelessWidget {
  const noteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context , index){

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: noteItem(),
      );
    });
  }
}