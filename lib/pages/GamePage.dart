import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/subjects/bst/game.dart';
import 'package:fullscreen_window/fullscreen_window.dart';

class GamePage extends StatelessWidget {
  GamePage({super.key});

  BSTGame game = new BSTGame();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget(game: kDebugMode ? BSTGame() : game),
    );
  }
}