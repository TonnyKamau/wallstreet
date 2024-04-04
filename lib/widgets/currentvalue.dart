import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallstreet/colours/colours.dart';

class CurrentValue extends StatelessWidget {
  const CurrentValue({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 80,
        width: double.infinity,
        child: Row(
          children: [
            RichText(
              text: TextSpan(
                style: GoogleFonts.barlowCondensed(
                  fontSize: 65,
                  fontWeight: FontWeight.w600,
                  color: icons,
                ),
                children: const [
                  TextSpan(
                    text: '\$1,',
                    style: TextStyle(
                      color: icons, // Change the color of the decimal part here
                    ),
                  ),
                  TextSpan(
                    text: '000,000',
                    style: TextStyle(
                      color: icons, // Change the color of the decimal part here
                    ),
                  ),
                  TextSpan(
                    text: '.00',
                    style: TextStyle(
                      color:
                          labels, // Change the color of the decimal part here
                    ),
                  ),
                ],
              ),
            ),
            SvgPicture.asset(
              'assets/uptrend.svg',
              width: 50,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
