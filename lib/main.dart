import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'intro.dart';
import 'home.dart';
import 'signup.dart';
import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'intro',
      routes: {
        'intro': (context) => WelcomeScreen(),
        'registration': (context) => RegistrationScreen(), // todo
        'login': (context) => LoginScreen(),
        'home': (context) => HomeScreen()
      },
    );
  }
}