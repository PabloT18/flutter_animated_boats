import 'package:animated_boats/utils/responsive.dart';
import 'package:flutter/material.dart';

class IconBack extends StatelessWidget {
  const IconBack({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Positioned(
      top: responsive.hp(6),
      child: IconButton(
          icon: Icon(
            Icons.cancel,
            size: responsive.dp(3),
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
