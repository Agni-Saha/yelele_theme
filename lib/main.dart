import 'package:flutter/material.dart';
import 'package:theme_style/pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF16161a),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF7f5af0),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF0f0e17),
          selectedIconTheme: IconThemeData(
            color: Color(0xFF7f5af0),
          ),
          selectedItemColor: Color(0xFF7f5af0),
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w500,
          ),
          unselectedIconTheme: IconThemeData(
            color: Color(0xFFFFFFFE),
          ),
          unselectedItemColor: Color(0xFFFFFFFE),
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        cardTheme: const CardTheme(
          margin: EdgeInsets.only(bottom: 10),
          color: Color(0xFF242629),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              const Color(0xFF7f5af0),
            ),
            foregroundColor: MaterialStateProperty.all(
              const Color(0xFFfffffe),
            ),
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
            ),
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            side: MaterialStateProperty.all(
              const BorderSide(
                color: Color(0xFF2cb67d),
              ),
            ),
            foregroundColor: MaterialStateProperty.all(
              const Color(0xFF2cb67d),
            ),
            padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
            ),
            textStyle: MaterialStateProperty.all(
              const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Color(0xFF7f5af0),
          ),
          bodyMedium: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
      home: const LandingPage(),
    );
  }
}
