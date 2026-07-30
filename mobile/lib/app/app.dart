import 'package:flutter/material.dart';
import '../features/auth/screens/splash_screen.dart';
import 'theme.dart';

class FastkroApp extends StatelessWidget {
  const FastkroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fastkro",
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}