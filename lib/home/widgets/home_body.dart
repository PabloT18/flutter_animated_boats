import 'package:flutter/material.dart';

import 'package:animated_boats/boat/view/boat_page.dart';

import 'package:animated_boats/app/models/boats.dart';

import 'package:animated_boats/utils/responsive.dart';

class HomeBody extends StatefulWidget {
  HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final PageController _pagecontroller = PageController();

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);

    return Expanded(
      child: PageView.builder(
        controller: _pagecontroller,
        physics: const BouncingScrollPhysics(),
        itemCount: boats.length,
        itemBuilder: (_, index) {
          var boat = boats[index];
          return Container(
            child: Column(
              children: [
                Hero(
                  tag: boat.hashCode,
                  child: Image.asset(
                    boat.imagePath!,
                    height: responsive.hp(55),
                    width: responsive.wp(40),
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: responsive.hp(4)),
                Text(
                  boat.name!,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: responsive.dp(4),
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  'By ${boat.byName}',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: responsive.dp(2),
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(height: responsive.hp(2)),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => BoatPage(
                                  boat: boat,
                                )));
                  },
                  child: Text(
                    'SPEC >',
                    style: TextStyle(
                        fontSize: responsive.dp(2),
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[800]),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
