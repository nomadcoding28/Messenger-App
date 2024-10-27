import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:messenger/screens/welcome_screen.dart';
import 'package:messenger/screens/login_screen.dart';
import 'package:messenger/screens/registration_screen.dart';
import 'package:messenger/screens/chat_screen.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDnKFn8qoW7NNMu_5r2RDqAopTlxK4OXwI",
            authDomain: "messenger-ac931.firebaseapp.com",
            projectId: "messenger-ac931",
            storageBucket: "messenger-ac931.appspot.com",
            messagingSenderId: "445483920518",
            appId: "1:445483920518:web:852080608b8afc10ee7507"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      useDefaultLoading: false,
      overlayWidgetBuilder: (content) => Center(
        child: SpinKitCubeGrid(
          color: Colors.red,
          size: 50.0,
        ),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          ChatScreen.id: (context) => ChatScreen(),
        },
      ),
    );
  }
}
