import 'package:flutter/material.dart';

import 'screens/login_screen.dart';

void main() {
  runApp(const FitDashboardApp());
}

class FitDashboardApp extends StatelessWidget {
  const FitDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    const blue = Color(0xFF1683F8);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appname',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: blue,
          primary: blue,
          surface: Colors.white,
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
