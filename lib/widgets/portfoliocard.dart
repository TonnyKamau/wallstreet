import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallstreet/colours/colours.dart';

class PortfolioCard extends StatelessWidget {
  final String name;
  final String symbol;
  final double price;
  final double portfolioValue;
  final double changePercentage;
  final Widget image;
  final Widget chart;
  final bool isUptrend;
  const PortfolioCard({
    super.key,
    required this.name,
    required this.symbol,
    required this.price,
    required this.portfolioValue,
    required this.changePercentage,
    required this.image,
    required this.chart,
    required this.isUptrend,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: labels,
                      ),
                    ),
                    const SizedBox(width: 5),
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
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '\$${portfolioValue.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: icons,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      symbol,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: icons,
                      ),
                    ),
                    isUptrend
                        ? SvgPicture.asset(
                            'assets/arrow-sm-up.svg',
                            width: 30,
                            height: 30,
                          )
                        : SvgPicture.asset(
                            'assets/arrow-sm-down.svg',
                            width: 30,
                            height: 30,
                          ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 60, child: chart),
            CircleAvatar(
              radius: 25,
              backgroundColor: labels,
              child: image,
            )
          ],
        ),
      ),
    );
  }
}
