import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_Search_Icon.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 250,),
        customSearchIcon(),
      ],
    );
  }
}
