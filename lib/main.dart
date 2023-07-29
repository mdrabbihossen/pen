import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pen/views/auth/login/screens/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        primaryColor: Colors.white,
        hintColor: Colors.white,
        scaffoldBackgroundColor: const Color(0xff070706),
      ),
      home: const LoginScreen(),
    );
  }
}
