import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/signup_buttons.dart';

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
        child: MyScaffold(),
      ),
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: GoogleFonts.aBeeZee(),
          headlineLarge: GoogleFonts.aBeeZee(
            fontSize: 24,
            color: Color.fromRGBO(176, 13, 5, 1),
          ),
        ),
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/logo.png',
                      width: 125,
                      height: 125,
                    ),
                    Text(
                      'IARIES',
                      style: TextStyle(fontSize: 50),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Unknown Thoughts By ',
                          style: Theme.of(context).textTheme.titleLarge),
                      Text(
                        'Someone',
                        style: Theme.of(context).textTheme.headlineLarge,
                      )
                    ],
                  ),
                )
              ],
            ),
            SignUpButtons()
          ],
        ),
      ),
    );
  }
}
