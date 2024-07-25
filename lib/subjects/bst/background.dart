import 'dart:math';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flutter_application_1/subjects/bst/houses.dart';

/// The [Background] is a component that is composed of multiple scrolling
/// images which form a parallax, a way to simulate movement and depth in the
/// background.
class Background extends ParallaxComponent {
  Background({required this.speed});

  final double speed;
  int houseNum = Random().nextInt(5) + 1;

  @override
  Future<void> onLoad() async {
    // final houseSprite = await Sprite.load('00$houseNum.png');
    // final size = Vector2.all(380);
    // final house = SpriteComponent(size: size, sprite: houseSprite);
    final layers = [
      ParallaxImageData('sky.png'),
      ParallaxImageData('cloud.png'),
      ParallaxImageData('trees.png'),
      ParallaxImageData('lamp.png'),
      ParallaxImageData('road.png'),
    ];

    final baseVelocity = Vector2(speed / pow(2, layers.length), 0);

    final velocityMultiplierDelta = Vector2(2.0, 0.0);

    parallax = await game.loadParallax(
      layers,
      baseVelocity: baseVelocity,
      velocityMultiplierDelta: velocityMultiplierDelta,
      filterQuality: FilterQuality.none,
    );

    // add(House());
  }
}
