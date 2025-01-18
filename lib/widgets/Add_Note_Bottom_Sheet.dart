import 'package:flutter/material.dart';
import 'package:notesapp/widgets/Custom_Text_Field.dart';

import 'package:notesapp/widgets/custom_Bottom.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

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


  String? title , subtitle ;




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 24,
        ),
        CustomTextField(
          onSaved: (newValue) {
            title =   newValue ;       },
          Hint: "Title",
        ),
        SizedBox(
          height: 15,
        ),
        CustomTextField(
          onSaved: (newValue) {
            subtitle = newValue ;
          },
          Hint: "contant",
          maxLines: 5,
        ),
       const SizedBox(height: 60,),
        customBottom(
          onTap: () {
            if(formKey .currentState!.validate()){
              formKey.currentState!.save();
            }else{
              autovalidateMode =AutovalidateMode.always;
              setState(() {
                
              });
            }
          },
        ),
      ],
    );
  }
}

