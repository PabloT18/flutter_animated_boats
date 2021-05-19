// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:animated_boats/app/cubit/theme_app_cubit_cubit.dart';

import 'package:animated_boats/home/home.dart';

import 'package:animated_boats/utils/theme/theme_app.dart';
import 'package:animated_boats/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeAppCubit>(
      create: (contextBp) => ThemeAppCubit(),
      child: const _AppMaterial(),
    );
  }
}

class _AppMaterial extends StatefulWidget {
  const _AppMaterial({
    Key? key,
  }) : super(key: key);

  @override
  __AppMaterialState createState() => __AppMaterialState();
}

class __AppMaterialState extends State<_AppMaterial>
    with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
    super.initState();
  }

  @override
  void didChangePlatformBrightness() {
    context.read<ThemeAppCubit>().updateAppTheme();
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: context.select(
          (ThemeAppCubit themeAppCubit) => themeAppCubit.state.themeMode),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
