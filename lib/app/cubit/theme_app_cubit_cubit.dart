import 'package:animated_boats/utils/theme/theme_app.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'theme_app_cubit_state.dart';

class ThemeAppCubit extends Cubit<ThemeAppCubitState> {
  ThemeAppCubit() : super(ThemeAppCubitState(themeMode: ThemeMode.light)) {
    updateAppTheme();
  }

  void updateAppTheme() {
    final currentBrightness = AppTheme.currentSystemBrightness;
    currentBrightness == Brightness.light
        ? _setTheme(ThemeMode.light)
        : _setTheme(ThemeMode.dark);
  }

  void _setTheme(ThemeMode themeMode) {
    print(themeMode);
    AppTheme.setStatusBarAndNavigationBarColors(themeMode);
    emit(ThemeAppCubitState(themeMode: themeMode));
  }
}
