import 'package:flutter/material.dart';
import 'package:learning_b/modules/auth/screens/create_account.dart';
import 'package:learning_b/modules/auth/screens/login.dart';
import 'package:learning_b/navegation/navigation.dart';
import 'package:learning_b/navegation/pofile.dart';
import 'package:learning_b/widgets/splash_screen.dart';
import 'package:learning_b/navegation/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

//import 'package:learning1/widgets/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        '/login': (context) => const Login(),
        '/register': (context) => const CreateAccount(),
        '/menu': (context) => const Navigation(),
        '/home': (context) => const Home(),
        '/profile': (context) => const Profile(),
      },
    );
  }
}
