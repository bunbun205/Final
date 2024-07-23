import 'dart:math';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/parallax.dart';

/// The [Background] is a component that is composed of multiple scrolling
/// images which form a parallax, a way to simulate movement and depth in the
/// background.
class Background extends ParallaxComponent {
  Background({required this.speed});

  final double speed;

  @override
  Future<void> onLoad() async {
    final layers = [
      ParallaxImageData('sky.png'),
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
  }
}
