import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:animated_boats/utils/theme/theme_app.dart';

class PlasmaBackGround extends StatelessWidget {
  const PlasmaBackGround({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        backgroundBlendMode: BlendMode.srcOver,
      ),
      child: PlasmaRenderer(
        type: PlasmaType.infinity,
        particles: 10,
        color: Theme.of(context).particlesColor,
        blur: 0.5,
        size: 0.5,
        speed: 1.97,
        offset: 0,
        blendMode: BlendMode.plus,
        particleType: ParticleType.atlas,
        variation1: 0,
        variation2: 0,
        variation3: 0,
        rotation: 0,
      ),
    );
  }
}
