import 'package:flutter/material.dart';
import 'package:library_cs/open_screen.dart';
import 'package:library_cs/pages/catogry_page.dart';
import 'package:firebase_core/firebase_core.dart';
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
      home: const PoenScreenApp(),
      routes: {
        'CatogryPage': (context) => const CatogryPage(),
      },
    );
  }
}
