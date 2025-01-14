import 'package:flutter/material.dart';
import 'package:notesapp/widgets/Note_List_View.dart';


import 'package:notesapp/widgets/custom_App-Bar.dart';


class NoteViewbody extends StatelessWidget {
  const NoteViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          customAppBar(
            title: "Notes",
            icon: Icons.search,
          ),
          Expanded(child: noteListView()),
        ],
      ),
    );
  }
}

