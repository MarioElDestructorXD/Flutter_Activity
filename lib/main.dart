import 'package:flutter/material.dart';
import 'package:learning_b/navegation/navigation.dart';
import 'package:learning_b/navegation/pofile.dart';
import 'package:learning_b/navegation/reservations.dart';
import 'package:learning_b/navegation/top.dart';
import 'package:learning_b/widgets/SplashScreen.dart';
import 'package:learning_b/widgets/home.dart';

//import 'package:learning1/widgets/home.dart';

void main() {
  runApp(const MainApp());
}

//flutter pub get
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/menu': (context) => const Navigation(),
        '/home': (context) => const Home(),
        '/profile': (context) => const Profile(),
        '/reservations': (context) => const Reservations(),
        '/top': (context) => const Top(),
      },
    );
  }
}
