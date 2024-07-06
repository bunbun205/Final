import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/subjects/bst/chapter1.dart';

class BSTGame extends FlameGame {

  @override
  Color backgroundColor() => const Color(0xFF211F30);

  late final CameraComponent cam;
  final world = Chapter1();

  @override
  FutureOr<void> onLoad() async {
    await images.loadAllImages();
    cam = CameraComponent.withFixedResolution(world: world, width: 1920, height:1080);
    cam.viewfinder.anchor = Anchor.topLeft;
    addAll([world, cam]);
    return super.onLoad();
  }
}