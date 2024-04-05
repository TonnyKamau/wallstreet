import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallstreet/colours/colours.dart';

class FavoriteCard extends StatelessWidget {
  final String name;
  final String symbol;
  final double price;
  final double change;
  final double changePercentage;
  final Widget image;
  final Widget chart;
  final bool isUptrend;
  const FavoriteCard({
    super.key,
    required this.name,
    required this.symbol,
    required this.price,
    required this.change,
    required this.changePercentage,
    required this.image,
    required this.chart,
    required this.isUptrend,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: icons,
            width: 0.5,
          ),
        ),
        width: MediaQuery.of(context).size.width * 0.44,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: labels,
                      child: image,
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: icons,
                            ),
                          ),
                          Text(
                            symbol,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: labels,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: chart,
              ),
              const SizedBox(height: 5),
              Text(
                '\$${price.toStringAsFixed(2)}',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: icons,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                width: 100, // Adjust width as needed
                decoration: BoxDecoration(
                  color: labels,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ), // Adjust padding to make it smaller
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    isUptrend
                        ? SvgPicture.asset(
                            'assets/arrowup.svg',
                            width: 20,
                            height: 20,
                          )
                        : SvgPicture.asset(
                            'assets/arrowdown.svg',
                            width: 20,
                            height: 20,
                          ),
                    Text(
                      '${isUptrend ? '+' : '-'} ${changePercentage.toStringAsFixed(2)}%',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
