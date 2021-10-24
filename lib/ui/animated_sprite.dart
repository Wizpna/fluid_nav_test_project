import 'package:fluid_nav_test_project/ui/sprite.dart';
import 'package:flutter/widgets.dart';

class AnimatedSprite extends AnimatedWidget {
  final ImageProvider image;
  final int frameWidth;
  final int frameHeight;

  AnimatedSprite({
    Key? key,
    required this.image,
    required this.frameWidth,
    required this.frameHeight,
    required Animation<double> animation,
  }): super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Sprite(
      image: image,
      frameWidth: frameWidth,
      frameHeight: frameHeight,
      frame: animation.value,
    );
  }
}
