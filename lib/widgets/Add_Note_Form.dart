import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubit/add_note_cubit.dart';
import 'package:notesapp/models/note_models.dart';
import 'package:notesapp/widgets/Custom_Text_Field.dart';
import 'package:notesapp/widgets/custom_Bottom.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 24,
        ),
        CustomTextField(
          onSaved: (newValue) {
            title = newValue;
          },
          Hint: "Title",
        ),
        SizedBox(
          height: 15,
        ),
        CustomTextField(
          onSaved: (newValue) {
            subtitle = newValue;
          },
          Hint: "contant",
          maxLines: 5,
        ),
        const SizedBox(
          height: 60,
        ),
        customBottom(
          onTap: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();

              var noteModel = NoteModel(
                Title: title!,
                subtitle: subtitle!,
                date: DateTime.now().toString(),
                color: Colors.blue.value,
              );

              BlocProvider.of<AddNoteCubit>(context).AddNote(
                noteModel,
              );
            } else {
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }
          },
        ),
      ],
    );
  }
}
