import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallstreet/colours/colours.dart';

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
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 70,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 100,
                          child: GestureDetector(
                            onTap: () => print("Tapped"),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/visa.svg',
                                  width: 40,
                                  height: 40,
                                ),
                                SvgPicture.asset(
                                  'assets/mastercard.svg',
                                  width: 40,
                                  height: 40,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/plus.svg',
                              width: 40,
                              height: 40,
                            ),
                            splashColor: Colors.transparent,
                            highlightColor: Colors
                                .transparent, // Additionally set highlight color to transparent
                            hoverColor: Colors
                                .transparent, // Set hover color to transparent if needed
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/menu.svg',
                        width: 40,
                        height: 40,
                      ),
                      color: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
