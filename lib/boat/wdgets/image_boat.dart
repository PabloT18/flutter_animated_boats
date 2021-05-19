import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'package:animated_boats/app/models/boats.dart';

import 'package:animated_boats/utils/responsive.dart';

class ImageBoat extends StatefulWidget {
  const ImageBoat({required this.boat});

  final Boat boat;

  @override
  _ImageBoatState createState() => _ImageBoatState();
}

class _ImageBoatState extends State<ImageBoat> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _angle;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 400), vsync: this);

    _angle = Tween<double>(
      begin: 0,
      end: 0.03,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.400,
          1.000,
          curve: Curves.ease,
        ),
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);

    return Hero(
      tag: widget.boat.hashCode,
      child: RotationTransition(
        turns: _angle,
        child: Transform.rotate(
          origin: const Offset(0, 20),
          angle: -math.pi / 1.8,
          child: Image.asset(
            widget.boat.imagePath!,
            height: responsive.hp(55),
            width: responsive.wp(40),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
