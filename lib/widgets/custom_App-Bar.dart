import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_Search_Icon.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Spacer(flex: 2,),
          customSearchIcon(
            icon: icon,
          ),
        ],
      ),
    );
  }
}
