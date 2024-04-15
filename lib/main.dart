import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallstreet/colours/colours.dart';
import 'package:wallstreet/screens/card/card.dart';
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
        GetPage(name: '/payment_details', page: () => const AddCard()),
        GetPage(name: '/scan_card', page: () => const ScanCard()),
      ],
      title: 'KWallStreet',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: icons),
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
    );
  }
}

