import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/sign_up_page.dart';
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
            titleLarge: GoogleFonts.aBeeZee(),
            headlineLarge: GoogleFonts.aBeeZee(
              fontSize: 24,
              color: AppColors.primary,
            ),
            bodySmall: GoogleFonts.aBeeZee(color: AppColors.gray)),
      ),
    );
  }
}
