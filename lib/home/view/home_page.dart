import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:animated_boats/home/home.dart';

import 'package:animated_boats/home/widgets/widets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: CounterView(),
    );
  }
}

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const PlasmaBackGround(),
          Column(
            children: [
              const HomeTitle(),
              HomeBody(),
            ],
          ),
        ],
      ),
    );
  }
}
