import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF141C24),
        primaryColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xFF003B76),
            secondary: const Color(0xFFD9D9D9)
        ),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      title: 'Clown',
      home:const HomeScreen(title: 'Clown'),
    );
  }
}
