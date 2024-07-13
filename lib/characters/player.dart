import 'dart:async';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/hardware_keyboard.dart';
import 'package:flutter/src/services/keyboard_key.g.dart';
import 'package:flutter_application_1/subjects/bst/game.dart';

enum player_states { idle, running }

enum player_direction { left, right, none }

class Player extends SpriteAnimationGroupComponent with HasGameRef<BSTGame>,KeyboardHandler {
  String Character;
  Player({position, required this.Character}) : super(position: position);
  late final SpriteAnimation idle_animation;
  late final SpriteAnimation running_animation;
  final double stepTime = 1;
  double speed = 10;
  double Horizontalmovement=0;
  double Vericalmovemnet=0;
  Vector2 velocity = Vector2.zero();
  bool right_facing=true;
  @override
  FutureOr<void> onLoad() {
    // TODO: implement onLoad
    _loadallanimations();
    return super.onLoad();
  }

  @override
  void update(double dt) {
    // TODO: implement update
    _updateplayerstate();
    _updateplayermovement(dt);
    super.update(dt);
  }
  @override
  bool onKeyEvent(KeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    // TODO: implement onKeyEvent
    Horizontalmovement=0;
    final leftkeypressed=keysPressed.contains(LogicalKeyboardKey.arrowLeft)|| keysPressed.contains(LogicalKeyboardKey.keyA);
    final rightkeypressed=keysPressed.contains(LogicalKeyboardKey.arrowRight)|| keysPressed.contains(LogicalKeyboardKey.keyD);
    Vericalmovemnet=0;
    final upkeypressed=keysPressed.contains(LogicalKeyboardKey.arrowUp)|| keysPressed.contains(LogicalKeyboardKey.keyW);
    final downkeypressed=keysPressed.contains(LogicalKeyboardKey.arrowDown)|| keysPressed.contains(LogicalKeyboardKey.keyS);
    Horizontalmovement+=rightkeypressed?1:leftkeypressed?-1:0;
    Vericalmovemnet+=upkeypressed?1:downkeypressed?-1:0;
    if (rightkeypressed && leftkeypressed) Horizontalmovement=0;
    if(upkeypressed && downkeypressed) Vericalmovemnet=0;

    return super.onKeyEvent(event, keysPressed);
  }

  void _loadallanimations() {
    idle_animation = _spriteanimation('Idle', 1);
    running_animation = _spriteanimation('Run', 1);

    animations = {
      player_states.idle: idle_animation,
      player_states.running: running_animation
    };
    current = player_states.idle;
  }

  SpriteAnimation _spriteanimation(String state, int amount) {
    return SpriteAnimation.fromFrameData(
        game.images.fromCache('$Character.png'),
        SpriteAnimationData.sequenced(
            amount: amount, stepTime: stepTime, textureSize: Vector2(83, 283)));
  }

  
  void _updateplayermovement(double dt) {
    velocity.x=Horizontalmovement*speed;
    velocity.y=Vericalmovemnet*speed;
    position.x+=velocity.x*dt;
    position.y+=velocity.y*dt;
  }
  
  void _updateplayerstate() {
player_states state=player_states.idle;
if(velocity.x<0 && scale.x>0) flipHorizontallyAroundCenter();
else if (velocity.x>0 && scale.x<0) flipHorizontallyAroundCenter();
if (velocity.x!=0 || velocity.y!=0) state=player_states.running;
else state= player_states.idle;
  }
}