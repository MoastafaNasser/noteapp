import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_note_item.dart';

class noteListView extends StatelessWidget {
  const noteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: noteItem(),
          );
        },
      ),
    );
  }
}
