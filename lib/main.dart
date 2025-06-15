import 'package:dagadushet_app/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options:const  FirebaseOptions(
          apiKey: "AIzaSyBdqNmQTiH5Y4c6JCFQE6c2TkpNc7pSxoM",
          appId: "1:477498744600:android:265020592f42cf72e8c86d",
          messagingSenderId: "477498744600",
          projectId: "flutter-project-73f36"));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}      
