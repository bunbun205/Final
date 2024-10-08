import 'package:firebase_auth/firebase_auth.dart';
import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/GamePage.dart';
import 'package:flutter_application_1/pages/Login.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/PasswordReset.dart';
import 'package:flutter_application_1/pages/Register.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setLandscape();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: RegisterPage(),
      ),
    );
  }
}
