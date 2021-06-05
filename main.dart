import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:income_tax_calculator/constants/app_themes.dart';
import 'package:income_tax_calculator/cubits/themes/themes_cubit.dart';
import 'package:income_tax_calculator/view_layer/AppRouter.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({Key key, this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: appRouter.themesCubit,
      child: BlocBuilder<ThemesCubit, ThemesState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: state is ThemesInitial ? AppThemes.Theme_Mode_Mapper[appRouter.themesCubit.defaultTheme] : AppThemes.Theme_Mode_Mapper[(state as ThemesLoaded).themeMode.theme_mode],
            onGenerateRoute: appRouter.generateMyRoutes,
          );
        },
      ),
    );
  }
}
