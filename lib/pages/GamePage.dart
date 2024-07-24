import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/subjects/bst/game.dart';

class GamePage extends StatelessWidget {
  GamePage({super.key});


  final pauseMenuIdentifier = 'PauseMenu';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget(
        game: BSTGame(pauseMenuIdentifier),
        overlayBuilderMap: {
          'PauseMenu': _pauseMenuWidget,
        },),
    );
  }
}

Widget _pauseMenuWidget(BuildContext ctx, BSTGame game){
  return Scaffold(
 body: Center(
  child: Column(children: [
    Text("inventory")
  ],),
 ),
  );
}