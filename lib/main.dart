import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/signup_page.dart';
import './utils/styles.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diaries',
      home: SafeArea(
        child: SignUpPage(),
      ),
      theme: ThemeData(
        textTheme: TextTheme(
            titleLarge: GoogleFonts.aBeeZee(fontSize: 20),
            headlineLarge: GoogleFonts.aBeeZee(
              fontSize: 20,
              color: AppColors.primary,
            ),
            labelLarge:
                GoogleFonts.roboto(fontSize: 17, fontWeight: FontWeight.w600),
            bodySmall: GoogleFonts.aBeeZee(color: AppColors.gray)),
      ),
    );
  }
}
