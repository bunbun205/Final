import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame_tiled/flame_tiled.dart';
import 'package:flutter_application_1/characters/player.dart';

class Chapter1 extends World{

  late TiledComponent background;

  @override
  FutureOr<void> onLoad()async {
    
    background = await TiledComponent.load('map.tmx', Vector2.all(16));
    add(background);

    final spawnPointsLayer = background.tileMap.getLayer<ObjectGroup>('Spawnpoints');

    for (final spawnPoint in spawnPointsLayer!.objects) {
      switch (spawnPoint.class_) {
        case 'Player':
          final player = Player(
            position: Vector2(spawnPoint.x, spawnPoint.y),
            character: 'player',
          );
          add(player);
          break;
        default:
      }
    }
    return super.onLoad();
  }
}