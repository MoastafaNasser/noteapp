import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:notesapp/widgets/custom_App-Bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          customAppBar(),
          customItem(),
        ],
      ),
    );
  }
}

class customItem extends StatelessWidget {
  const customItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 16,
        bottom: 16,
        left: 14,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xffFFCD7F),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter tips",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 24),
              child: Text(
                "build your career with  mostafa nasser",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
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
              "january 1 , 2025 ",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
