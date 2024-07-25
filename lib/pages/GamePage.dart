import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/subjects/bst/game.dart';
import 'package:fullscreen_window/fullscreen_window.dart';

class GamePage extends StatelessWidget {
  GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget(
        game: BSTGame(),
        overlayBuilderMap: const {
      'PauseMenu': _pauseMenuWidget,
    },
    initialActiveOverlays: const ['PauseMenu'],
      ),
    );
  }
}


Widget _pauseMenuWidget(BuildContext ctx, BSTGame game){
  return Scaffold(
 body: Center(
    child: Container(
      width: 100,
      height: 100,
      color: Colors.orange,
      child: const Center(
        child: Text('Paused'),
      ),
    ),
  ),
  );
}