import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colours/colours.dart';

class Transact extends StatelessWidget {
  const Transact({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: icons, // Example background color
                borderRadius:
                    BorderRadius.circular(40), // Example border radius
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 30,
                  top: 5,
                  bottom: 5,
                  left: 5,
                ),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/upload.svg',
                    width: 50,
                    height: 50,
                  ),
                  label: Text(
                    'Transfer',
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: browned, // Example text color
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                    overlayColor: MaterialStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                    foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
            ),
          ),
          CircleAvatar(
            backgroundColor: icons,
            radius: 21,
            child: Center(
              child: SvgPicture.asset(
                'assets/currency.svg',
                width: 35,
                height: 35,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: icons, // Example background color
                borderRadius:
                    BorderRadius.circular(40), // Example border radius
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 30,
                  top: 5,
                  bottom: 5,
                  left: 1,
                ),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/download.svg',
                    width: 50,
                    height: 50,
                  ),
                  label: Text(
                    'Receive',
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: browned, // Example text color
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                    overlayColor: MaterialStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                    foregroundColor: MaterialStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
