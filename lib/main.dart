import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'home/ui/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyAZy593Oa5Te_En4MoBwn8JChTgJe0TPKs",
        authDomain: "travel-web-980e0.firebaseapp.com",
        projectId: "travel-web-980e0",
        storageBucket: "travel-web-980e0.firebasestorage.app",
        messagingSenderId: "844115463383",
        appId: "1:844115463383:web:f80aff117a89db0bfe3492",
        measurementId: "G-6E4K5Q1C9M"
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Web',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
