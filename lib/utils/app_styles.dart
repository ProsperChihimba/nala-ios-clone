import 'package:google_fonts/google_fonts.dart';
import 'package:nala_clon/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';

class Styles {
  // App colors
  static Color blueColor = const Color(0xFF04A4DD);
  static Color whiteColor = const Color(0xFFffffff);

  // App default styles
  static TextStyle normalText = GoogleFonts.poppins(
    fontSize: AppLayout.getHeight(15),
  );
}
