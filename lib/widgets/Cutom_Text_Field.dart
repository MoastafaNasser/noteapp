
import 'package:flutter/material.dart';
import 'package:notesapp/widgets/contstant.dart';

class CutomTextField extends StatelessWidget {
  const CutomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Kprimarycolor,
    
      decoration: InputDecoration(
        hintText: "Title",
        hintStyle: TextStyle(color: Kprimarycolor , fontSize: 24),
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