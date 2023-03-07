import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:tictoc/constants/sizes.dart';
import 'package:tictoc/features/onboarding/interests_screen.dart';

void main() {
  runApp(const TicTocApp());
}

class TicTocApp extends StatelessWidget {
  const TicTocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TicToc',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xFFE9435A),
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: Sizes.size16 + Sizes.size2,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      home: const InterestsScreen(),
    );
  }
}
