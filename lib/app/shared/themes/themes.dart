import 'package:flutter/material.dart';
part 'color_schemes.g.dart';

ThemeData get lightTheme => ThemeData(
      colorScheme: _lightColorScheme,
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          color: _lightColorScheme.onPrimary,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: _lightColorScheme.primary,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(
          _lightColorScheme.primary,
        ),
      ),
    );

ThemeData get darkTheme => ThemeData(
      colorScheme: _darkColorScheme,
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
          color: _darkColorScheme.onPrimary,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: _darkColorScheme.primary,
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(
          _darkColorScheme.primary,
        ),
      ),
    );
