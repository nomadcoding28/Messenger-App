import 'package:flutter/material.dart';
import 'package:messenger/components/rounded_button.dart';
import 'package:messenger/screens/login_screen.dart';
import 'package:messenger/screens/registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = "welcome_screen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDFE2EA),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(
                  child: Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image.asset('images/logo3.png'),
                      height: 60.0,
                    ),
                  ),
                ),
                SizedBox(
                    width: 10.0), // Added some space between the logo and text
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align text to the left
                  children: <Widget>[
                    Text(
                      'Messenger',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      'Chat. Connect. Enjoy.',
                      style: TextStyle(
                        fontSize: 16.0, // Adjusted the font size
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              color: Color(0XFF1B1A1D),
              title: 'Log In',
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              color: Color(0XFF1B1A1D),
              title: 'Register',
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
