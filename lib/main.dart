import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/signup_buttons.dart';

void main() {
  runApp(MaterialApp(
    title: 'Diaries',
    home: SafeArea(
      child: MyScaffold(),
    ),
  ));
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'images/logo.png',
                  width: 125,
                  height: 125,
                ),
                Text(
                  'IARIES',
                  style: GoogleFonts.roboto(
                      fontSize: 50, fontWeight: FontWeight.w400),
                  // style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            SignUpButtons()
          ],
        ),
      ),
    );
  }
}
