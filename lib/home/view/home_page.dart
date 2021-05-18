// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:animated_boats/app/theme/theme_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animated_boats/home/home.dart';
import 'package:animated_boats/l10n/l10n.dart';
import 'package:simple_animations/simple_animations.dart';

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
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
      body: Container(
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
      )
      // child: Stack(
      //   children: [
      //     PlasmaRenderer(
      //       type: PlasmaType.infinity,
      //       particles: 10,
      //       color: Colors.red,
      //       blur: 0.5,
      //       size: 0.5,
      //       speed: 1.97,
      //       offset: 0,
      //       blendMode: BlendMode.plus,
      //       particleType: ParticleType.atlas,
      //       variation1: 0,
      //       variation2: 0,
      //       variation3: 0,
      //       rotation: 0,
      //     ),
      //     const Center(
      //       child: CounterText(),
      //     )
      //   ],
      // ),
      ,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: () => context.read<CounterCubit>().increment(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterCubit>().decrement(),
          ),
        ],
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final count = context.select((CounterCubit cubit) => cubit.state);
    return Text('$count', style: theme.textTheme.headline1);
  }
}
