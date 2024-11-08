import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallstreet/screens/card/card.dart';
import 'package:wallstreet/screens/card/scan.dart';

import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const OnboardingScreen()),
        GetPage(name: '/home', page: () => const HomeScreen()),
        GetPage(name: '/payment_details', page: () => const AddCard()),
        GetPage(name: '/scan_card', page: () => const ScanCard()),
      ],
      debugShowCheckedModeBanner: false,
      title: 'KWallStreet',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
    );
  }
}
