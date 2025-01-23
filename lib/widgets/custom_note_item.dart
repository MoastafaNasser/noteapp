import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/models/note_models.dart';
import 'package:notesapp/widgets/edit_note_view.dart';

class noteItem extends StatelessWidget {
  const noteItem({super.key, required this.note});

  final NoteModel note ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const EditNoteView();
          }),
        );
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 16,
          bottom: 16,
          left: 14,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color:Color(note.color) ,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                 note.Title,
                style:const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 24),
                child: Text(
                  note.subtitle,
                  style:  TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    // ignore: deprecated_member_use
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                note.date,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
