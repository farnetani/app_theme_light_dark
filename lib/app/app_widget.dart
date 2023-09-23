import 'package:app_theme_light_dark/app/app_store.dart';
import 'package:app_theme_light_dark/app/pages/home_page.dart';
import 'package:app_theme_light_dark/app/shared/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppStore(),
      child: Consumer<AppStore>(
        builder: (context, value, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: value.themeMode,
            theme: lightTheme,
            darkTheme: darkTheme,
            home: const HomePage(
              key: Key('home_page'),
              title: 'Home Page',
            ),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
