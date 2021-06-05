import 'package:flutter/material.dart';
import 'package:income_tax_calculator/constants/app_routes.dart';
import 'package:income_tax_calculator/cubits/themes/themes_cubit.dart';
import 'package:income_tax_calculator/data_layer/repository/themes/themes_repository.dart';
import 'package:income_tax_calculator/data_layer/services/themes/themes_service.dart';
import 'package:income_tax_calculator/view_layer/home/home_screen.dart';
import 'package:income_tax_calculator/view_layer/not_found/screen_not_found.dart';
import 'package:income_tax_calculator/view_layer/splash/splash_screen.dart';


class AppRouter {
  ThemesRepository themesRepository;
  ThemesCubit themesCubit;

  AppRouter() {
    themesRepository = ThemesRepository(themesService: ThemesService());
    themesCubit = ThemesCubit(themesRepository: themesRepository);
  }


  Route<dynamic> generateMyRoutes(RouteSettings settings) {
    switch (settings.name) {
      /*  Splash Screen */
      case AppRoutes.INITIAL_SCREEN:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      /*  Home Screen  */
      case AppRoutes.HOME_SCREEN:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      /*  Screen Not found  */
      default:
        return MaterialPageRoute(builder: (_) => ScreenNotFound());
    }
  }
}
