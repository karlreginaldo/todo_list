import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

TextStyle titleFont({double fontSize, Color color, FontWeight fontWeight}) {
  return GoogleFonts.workSans(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
  );
}

TextStyle bodyFont({double fontSize, Color color, FontWeight fontWeight}) {
  return GoogleFonts.lato(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
  );
}
