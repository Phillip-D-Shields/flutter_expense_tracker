import 'package:expense_tracker/widgets/expenses.dart';
// import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.green);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Colors.greenAccent,
);

void main() {
  // ? lock a specific orientation
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
  //   (fn) {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: CardThemeData().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: Colors.green[400],
          foregroundColor: Colors.white,
        ),
        cardTheme: CardThemeData().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
            color: kColorScheme.onSecondaryContainer,
            fontSize: 24,
          ),
        ),
      ),
      themeMode: ThemeMode.system, // default, but good to remember
      home: Expenses(),
    ),
  );
  // }
  // );
}
