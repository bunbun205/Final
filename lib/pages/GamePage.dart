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
          'teleportation': _teleportationMenueWidget,
        },
        initialActiveOverlays: const ['teleportation'],
      ),
    );
  }
}

Widget _pauseMenuWidget(BuildContext ctx, BSTGame game) {
  return Scaffold(
    body: Center(
      child: Container(
        width: 1500,
        height: 800,
        color: Color.fromARGB(255, 128, 219, 235),
        child: Column(
          children: [
            Container(
              height: 60,
            ),
            Text(
              'Inventory',
              style: TextStyle(color: Colors.white, fontSize: 50),
            ),
            Container(
              height: 50,
            ),
            Row(
              children: [
                Container(
                  width: 1500,
                  height: 250,
                  color: Colors.blue,
                ),
              ],
            ),
            Container(
              height: 50,
            ),
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

Widget _moneyMenueWidget(BuildContext ctx, BSTGame game) {
  return Scaffold(
    body: TextButton(
      onPressed: () {},
      child: Text(
        'Money:',
        style:
            TextStyle(color: Color.fromARGB(255, 233, 227, 55), fontSize: 20),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 100, 242, 122),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      ),
    ),
  );
}

Widget _teleportationMenueWidget(BuildContext ctx, BSTGame game) {
  return Scaffold(
    body:
     Padding(
       padding: const EdgeInsets.all(8),
       child: Row( crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Container( padding: const EdgeInsets.all(8),  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromARGB(255, 7, 117, 136),), 
             child: Column( mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'TP',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 87, 150, 195),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  ),
                ),
                Container(
                  height: 10,
                )
                ,
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'X',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 87, 150, 195),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  ),
                ),
                Container(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Y',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 87, 150, 195),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  ),
                ),
                Container(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Z',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 87, 150, 195),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  ),
                ),
                Container(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'A',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 87, 150, 195),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  ),
                ),
              ],
                       ),
           ),
          Container(width: 10,),
          TextButton(
            onPressed: () {},
            child: Text(
              'Money:',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 87, 150, 195),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
          ),
          Container(width: 10),
          TextButton(
            onPressed: () {},
            child: Text(
              'inv',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 87, 150, 195),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            ),
          ),
          Container(width: 10),
                  TextButton(
            onPressed: () {},
            child: Text(
              'P',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 87, 150, 195),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            ),
          ),
        ],
           ),
     ),
  );
}
