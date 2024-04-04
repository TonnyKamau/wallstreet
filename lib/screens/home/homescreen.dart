import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallstreet/colours/colours.dart';
import 'package:wallstreet/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: browned,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Current Value',
              style: GoogleFonts.montserrat(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: icons,
              ),
            ),
          ),
          const CurrentValue(),
        ],
      ),
    );
  }
}



