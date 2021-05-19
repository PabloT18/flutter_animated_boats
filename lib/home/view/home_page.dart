// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

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
            ],
          ),
        ],
      ),
    );
  }
}




//  floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         crossAxisAlignment: CrossAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             key: const Key('counterView_increment_floatingActionButton'),
//             child: const Icon(Icons.add),
//             onPressed: () => context.read<CounterCubit>().increment(),
//           ),
//           const SizedBox(height: 8),
//           FloatingActionButton(
//             key: const Key('counterView_decrement_floatingActionButton'),
//             child: const Icon(Icons.remove),
//             onPressed: () => context.read<CounterCubit>().decrement(),
//           ),
//         ],
//       ),