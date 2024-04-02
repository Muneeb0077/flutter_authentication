import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './pages/login_page.dart';
import './pages/signup_page.dart';
import './pages/home.dart';
import './app/splash_screen/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBQwfFq-UXUy0tnEHsn7x4C5aodnOC3FHY",
          authDomain: "myfirstproject-483fc.firebaseapp.com",
          appId: "1:726310386644:web:e5ed7b22767722b0dd3441",
          messagingSenderId: "726310386644",
          projectId: "myfirstproject-483fc",
          storageBucket: "myfirstproject-483fc.appspot.com",
          measurementId: "G-DV96NTPCSS"),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        future: _auth.authStateChanges().first,
        builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          } else {
            if (snapshot.hasData && snapshot.data != null) {
              return SplashScreen(
                child: Home(),
              );
            } else {
              return const SplashScreen(
                child: LoginPage(),
              );
            }
          }
        },
      ),
      routes: {
        "/home": (context) => Home(),
        "/login": (context) => const LoginPage(),
        "/signup": (context) => const SignUp(),
      },
    );
  }
}
