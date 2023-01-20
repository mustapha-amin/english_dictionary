import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

kTextStyle(double size, [bool isBold = false, FontStyle fontstyle = FontStyle.normal]) {
  return GoogleFonts.raleway(
    fontSize: size,
    fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
    color: Colors.black,
    fontStyle: FontStyle.italic
  );
}