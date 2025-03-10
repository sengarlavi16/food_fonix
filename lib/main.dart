import 'package:flutter/material.dart';
import 'package:food_fonix/features/onboarding/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oktoast/oktoast.dart';

void main() {
  runApp(const OKToast(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.outfitTextTheme()),
      home: const LoginScreen(),
    );
  }
}
