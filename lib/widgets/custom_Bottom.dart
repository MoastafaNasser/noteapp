import 'package:flutter/material.dart';

import 'contstant.dart';

class customBottom extends StatelessWidget {
  const customBottom({super.key, this.onTap, this.isLoading = false});

  final void Function()? onTap;

  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        decoration: BoxDecoration(
          color: Kprimarycolor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: isLoading
              ? SizedBox(
                height: 25,
                width: 25,
                child: const CircularProgressIndicator(
                  color: Colors.black,
                  
                ),
              )
              : const Text(
                  "Add",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
        ),
      ),
    );
  }
}
