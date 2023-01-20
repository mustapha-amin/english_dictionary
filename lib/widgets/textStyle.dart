import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

kTextStyle(double size, [bool isBold = false]) {
  return GoogleFonts.raleway(
    fontSize: size,
    fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
    color: Colors.black,
  );
}