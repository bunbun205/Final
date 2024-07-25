import 'dart:async';
import 'dart:math';

import 'package:flame/components.dart';

class House extends SpriteComponent {

  int houseNum = Random().nextInt(5) + 1;

  @override
  FutureOr<void> onLoad() async {

    sprite = await Sprite.load('00$houseNum.png');
    size = Vector2.all(380);
    // TODO: implement onLoad
    return super.onLoad();
  }
}