import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddingTextField extends StatelessWidget {
  final String labeltext;
  final int maxLines;
  AddingTextField({
    required this.labeltext,
    required this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(color: Color(0xFFE5E5E5)),
          ),
          labelText: labeltext,
          labelStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.bold, color: Colors.grey),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(color: Color(0xFFE5E5E5)))),
    ));
  }
}
