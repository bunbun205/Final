import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/src/game/overlay_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/keyboard_key.g.dart';
import 'package:flutter_application_1/subjects/bst/background.dart';
import 'package:flutter_application_1/subjects/bst/chapter1.dart';
import 'package:fullscreen_window/fullscreen_window.dart';

class BSTGame extends FlameGame with KeyboardHandler {
  @override
  Color backgroundColor() => const Color(0xFF211F30);

  late final CameraComponent cam;
  final world = Chapter1();

  @override
  FutureOr<void> onLoad() async {
    await images.loadAllImages();
    cam = CameraComponent.withFixedResolution(world: world, width: 1920, height:1080);
    cam.viewport.size.setValues(1920, 1080);
    cam.viewfinder.anchor = Anchor.topLeft;
    cam.backdrop.add(Background(speed: 200));
    addAll([world, cam]);
    return super.onLoad();
  }

  @override
  bool onKeyEvent(KeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    // TODO: implement onKeyEvent
    if(keysPressed.contains(LogicalKeyboardKey.space)){
      if(overlays.isActive('PauseMenu')) {
        overlays.remove('PauseMenu');
        resumeEngine();
      } else {
        // overlays.add('PauseMenu');
        overlays.add('teleportation');
        pauseEngine();
      }
    }

    return super.onKeyEvent(event, keysPressed);
  }
}
