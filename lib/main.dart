import 'package:flutter/material.dart';
import 'package:library_cs/intro.dart';
import 'package:library_cs/main_screen.dart';
import 'package:library_cs/open_screen.dart';
import 'package:library_cs/pages/catogry_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:library_cs/splash_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        'CatogryPage': (context) => const CatogryPage(),
        'Open': (context) => const MainScreen(),
        'Intro': (context) => const Intro()
      },
    );
  }
}
