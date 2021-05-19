import 'package:flutter/material.dart';
import 'package:animated_boats/utils/responsive.dart';
import 'package:animated_boats/l10n/l10n.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var responsive = Responsive.of(context);

    final l10n = context.l10n;

    return Padding(
      padding: EdgeInsets.all(responsive.wp(5))
          .copyWith(top: responsive.hp(8), right: responsive.wp(8)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            l10n.homePageTitle,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: responsive.dp(4),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
          ),
          Icon(
            Icons.search,
            size: responsive.dp(3.5),
          )
        ],
      ),
    );
  }
}
