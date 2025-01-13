
import 'package:flutter/material.dart';

import 'contstant.dart';

class customBottom extends StatelessWidget {
  const customBottom({super.key});

@override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
        color: Kprimarycolor,
        borderRadius: BorderRadius.circular(16),

      ),
      child: Center(
        child: Text(
          "Add", style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            
          ),
        ),
      ),
    );
  }
}
