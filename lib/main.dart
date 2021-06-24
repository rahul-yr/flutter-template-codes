import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:instaprep/constants/app_routes.dart';
import 'package:instaprep/constants/app_themes.dart';
import 'package:instaprep/constants/hive_box_constants.dart';
import 'package:instaprep/screens/screen_not_found.dart';

void main() async {
  await Hive.initFlutter();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.Light_Theme,
      onGenerateRoute: generateMyRoutes,
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    Hive.box(HiveBoxConstants.APP_STARTUP_CONFIGS).compact();
    Hive.close();
    super.dispose();
  }

  Route<dynamic> generateMyRoutes(RouteSettings settings) {
    switch (settings.name) {
      /*  Login Screen */
      case AppRoutes.LOGIN_SCREEN_ROUTE:
        return MaterialPageRoute(builder: (context) => ScreenNotFound());
      /*  Home Screen  */
      case AppRoutes.HOME_SCREEN_ROUTE:
        return MaterialPageRoute(builder: (context) => ScreenNotFound());
      /*  Screen Not found  */
      default:
        return MaterialPageRoute(builder: (_) => ScreenNotFound());
    }
  }
}
