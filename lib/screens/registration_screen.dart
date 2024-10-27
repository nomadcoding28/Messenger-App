import 'package:flutter/material.dart';
import 'package:messenger/components/rounded_button.dart';
import 'package:messenger/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:messenger/screens/chat_screen.dart';
import 'package:loader_overlay/loader_overlay.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = "registration_screen";
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200.0,
              child: Image.asset('images/logo3.png'),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration: fieldelement.copyWith(hintText: 'Enter your email'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              decoration: fieldelement.copyWith(hintText: 'Enter a password'),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
                color: Colors.blueAccent,
                title: 'Register',
                onPressed: () async {
                  context.loaderOverlay.show();
                  // print(email);
                  // print(password);
                  try {
                    final newUser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    if (newUser != null) {
                      Navigator.pushNamed(context, ChatScreen.id);
                    }
                  } catch (e) {
                    print(e);
                  } finally {
                    context.loaderOverlay.hide(); // Hide loading overlay
                  }
                })
          ],
        ),
      ),
    );
  }
}
