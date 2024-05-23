import 'package:flutter/material.dart';
import '../components/signup_buttons.dart';
import '../pages/home_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Unknown Thoughts By ',
                          style: theme.textTheme.titleLarge),
                      Text(
                        'Someone',
                        style: theme.textTheme.headlineLarge,
                      )
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                SignUpButtons(),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    'Version 1.1',
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
