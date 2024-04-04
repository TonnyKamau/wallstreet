import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
                height: 100,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: icons, // Example background color
                        borderRadius:
                            BorderRadius.circular(40), // Example border radius
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, right: 30, top: 5, bottom: 5),
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/upload.svg',
                            width: 40,
                            height: 40,
                          ),
                          label: Text(
                            'Transfer',
                            style: GoogleFonts.montserrat(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: browned, // Example text color
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .transparent), // Set background color to transparent to prevent button's default background
                            overlayColor: MaterialStateProperty.all<Color>(Colors
                                .transparent), // Set overlay color to transparent to remove splash effect
                            foregroundColor: MaterialStateProperty.all<Color>(Colors
                                .transparent), // Set foreground color to transparent to remove text's default color
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    EdgeInsets.zero), // Set padding to zero
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: icons,
                      radius: 21,
                      child: Center(
                        child: SvgPicture.asset('assets/currency.svg',
                        width: 35,
                        height: 35,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: icons, // Example background color
                        borderRadius:
                            BorderRadius.circular(40), // Example border radius
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 5, right: 30, top: 5, bottom: 5),
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/download.svg',
                            width: 40,
                            height: 40,
                          ),
                          label: Text(
                            'Receive',
                            style: GoogleFonts.montserrat(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: browned, // Example text color
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors
                                .transparent), // Set background color to transparent to prevent button's default background
                            overlayColor: MaterialStateProperty.all<Color>(Colors
                                .transparent), // Set overlay color to transparent to remove splash effect
                            foregroundColor: MaterialStateProperty.all<Color>(Colors
                                .transparent), // Set foreground color to transparent to remove text's default color
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    EdgeInsets.zero), // Set padding to zero
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Favorites',
              style: GoogleFonts.montserrat(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: icons,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
