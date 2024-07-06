import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame_tiled/flame_tiled.dart';

class Chapter1 extends World{

  late TiledComponent background;

  @override
  FutureOr<void> onLoad()async {
    
    background = await TiledComponent.load('map.tmx', Vector2.all(16));
    add(background);
    return super.onLoad();
  }
}