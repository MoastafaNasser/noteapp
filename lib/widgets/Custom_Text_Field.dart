import 'package:flutter/material.dart';
import 'package:notesapp/widgets/contstant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.Hint, this.maxLines = 1,  this.onSaved});
  final String Hint;
  final int maxLines;

  final FormFieldSetter<String>? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved ,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "filed is required";
        }else{
          return null;
        }
      },
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
