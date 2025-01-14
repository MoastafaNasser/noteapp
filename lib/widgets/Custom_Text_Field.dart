import 'package:flutter/material.dart';
import 'package:notesapp/widgets/contstant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.Hint, this.maxLines = 1});
  final String Hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Kprimarycolor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: Hint,
        hintStyle: TextStyle(color: Kprimarycolor, fontSize: 24),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(
          Kprimarycolor,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: Color ?? Colors.white,
        ));
  }
}
