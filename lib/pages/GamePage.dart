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
      'money': _moneyMenueWidget,
    },
    initialActiveOverlays: const ['money'],
      ),
    );
  }
}


Widget _pauseMenuWidget(BuildContext ctx, BSTGame game){
  return Scaffold(
 body: Center(
    child: Container(
      width: 1500,
      height:800,
      color: Color.fromARGB(255, 128, 219, 235),
      child:Column(
        children: [
          Container(height:60,),
          Text('Inventory',style: TextStyle(color: Colors.white,fontSize: 50),),
          Container(height: 50,),
          Row(
            children: [
              Container(
                width: 1500,
                height: 250,
                color: Colors.blue,
                ),
            ],
          ),
          Container(height: 50,),
          Row(
            children: [
              Container(
                width: 1500,
                height: 250,
                color: Colors.blue,
                ),
            ],
          ),
        ],
      ),
    ),
  ),
  );
}
Widget _moneyMenueWidget(BuildContext ctx, BSTGame game){
    return Scaffold(
    body:
    TextButton(
      onPressed: () {},child: Text('M',style: TextStyle(color: Color.fromARGB(255, 233, 227, 55),fontSize: 20),),
      style: TextButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 100, 242, 122),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      ),
    ),
    );
  }