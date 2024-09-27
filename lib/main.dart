import 'package:flutter/material.dart';
import 'package:learning_b/widgets/home.dart';
import 'package:learning_b/widgets/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

// flutter pub get *Para obtener las dependencias*

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const Home()
      },
    );
  }
}
