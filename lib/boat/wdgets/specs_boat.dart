import 'package:flutter/material.dart';

import 'package:animated_boats/app/models/boats.dart';

import 'package:animated_boats/utils/responsive.dart';

import 'package:animated_boats/l10n/l10n.dart';

class Specifications extends StatelessWidget {
  const Specifications({required this.boat});

  final Boat boat;
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    final l10n = context.l10n;

    return Container(
      width: responsive.width,
      padding: EdgeInsets.symmetric(horizontal: responsive.wp(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            boat.name!,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: responsive.dp(4),
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            'By ${boat.byName}',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: responsive.dp(2),
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: responsive.hp(2)),
          Text(
            boat.description!,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: responsive.dp(2),
                ),
          ),
          SizedBox(height: responsive.hp(3)),
          Text(
            l10n.boatPageSpec,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: responsive.dp(2.5),
                  fontWeight: FontWeight.bold,
                ),
          ),
          _SpecBoat(
            spec: l10n.boatPageSpecLength,
            value: boat.length,
          ),
          _SpecBoat(
            spec: l10n.boatPageSpecBeam,
            value: boat.beam,
          ),
          _SpecBoat(
            spec: l10n.boatPageSpecWeight,
            value: boat.weight,
          ),
          _SpecBoat(
            spec: l10n.boatPageSpecFuel,
            value: boat.fuelCapacity,
          ),
        ],
      ),
    );
  }
}

class _SpecBoat extends StatelessWidget {
  const _SpecBoat({
    Key? key,
    this.spec,
    this.value,
  }) : super(key: key);

  final String? spec;
  final String? value;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Padding(
      padding: EdgeInsets.only(top: responsive.hp(2.5)),
      child: Row(
        children: <Widget>[
          Container(
            width: responsive.wp(40),
            child: Text(
              spec!,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontSize: responsive.dp(2),
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Text(
            value!,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: responsive.dp(2),
                ),
          ),
        ],
      ),
    );
  }
}
