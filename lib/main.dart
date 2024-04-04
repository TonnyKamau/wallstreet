import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
     getPages: [
        GetPage(name: '/', page: () => const OnboardingScreen()),
        GetPage(name: '/home', page: () => const HomeScreen()),
      ],
      title: 'KWallStreet',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
    );
  }
}

