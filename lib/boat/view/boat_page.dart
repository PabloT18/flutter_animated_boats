import 'package:flutter/material.dart';

import 'package:animated_boats/home/widgets/plasma_background.dart';

import 'package:animated_boats/boat/wdgets/widgets.dart';

import 'package:animated_boats/app/models/boats.dart';

import 'package:animated_boats/utils/responsive.dart';

class BoatPage extends StatelessWidget {
  const BoatPage({required this.boat});

  final Boat boat;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);

    return Scaffold(
      body: Stack(
        children: [
          const PlasmaBackGround(),
          const IconBack(),
          Positioned(
            left: responsive.wp(50),
            top: -responsive.hp(8),
            child: ImageBoat(boat: boat),
          ),
          Positioned(
              top: responsive.hp(35),
              child: Specifications(
                boat: boat,
              )),
        ],
      ),
    );
  }
}
