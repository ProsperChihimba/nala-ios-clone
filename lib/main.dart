import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nala_clon/bottom_bar.dart';
import 'package:nala_clon/utils/app_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Nala iOS clone',
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        textTheme: CupertinoTextThemeData(
          textStyle: GoogleFonts.poppins(
            fontSize: AppLayout.getHeight(20),
          ),
        ),
      ),
      home: const BottomBarSection(),
    );
  }
}
