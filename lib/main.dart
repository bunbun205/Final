import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/GamePage.dart';
import 'package:flutter_application_1/pages/login.dart';
//import 'package:flutter_application_1/pages/home_page.dart';
//import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/password_reset.dart';
//import 'package:flutter_application_1/pages/register.dart';

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
        body: GamePage(),
      ),
        );
  }
}
