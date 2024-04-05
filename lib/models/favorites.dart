import 'package:equatable/equatable.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallstreet/colours/colours.dart';

class Favorites extends Equatable {
  final String name;
  final String symbol;
  final double price;
  final double change;
  final double changePercentage;
  final Widget image;
  final bool isUptrend;
  final Widget chart;

  const Favorites({
    required this.name,
    required this.symbol,
    required this.price,
    required this.change,
    required this.changePercentage,
    required this.image,
    required this.isUptrend,
    required this.chart,
  });
  static List<Favorites> favorites = [
    Favorites(
      name: 'Apple',
      symbol: 'AAPL',
      price: 145.12,
      change: 0.32,
      changePercentage: 0.22,
      image: SvgPicture.asset(
        'assets/apple.svg',
        width: 30,
        height: 30,
      ),
      isUptrend: true,
      chart: LineChart(
        LineChartData(
          gridData: const FlGridData(
            show: false,
          ),
          titlesData: const FlTitlesData(
            show: false,
          ),
          borderData: FlBorderData(
            show: false,
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 0),
                FlSpot(1, 3),
                FlSpot(2, 2),
                FlSpot(3, 5),
                FlSpot(4, 2),
                FlSpot(5, 2),
                FlSpot(6, 1),
              ],
              isCurved: true,
              color: icons,
              barWidth: 2,
              isStrokeCapRound: false,
              belowBarData: BarAreaData(
                show: false,
                color: icons.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ),
    ),
    Favorites(
      name: 'Tesla',
      symbol: 'TSLA',
      price: 672.37,
      change: 0.32,
      changePercentage: 0.22,
      image: SvgPicture.asset(
        'assets/tesla.svg',
        width: 30,
        height: 30,
      ),
      isUptrend: true,
      chart: LineChart(
        LineChartData(
          gridData: const FlGridData(
            show: false,
          ),
          titlesData: const FlTitlesData(
            show: false,
          ),
          borderData: FlBorderData(
            show: false,
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 0),
                FlSpot(1, 3),
                FlSpot(2, 2),
                FlSpot(3, 5),
                FlSpot(4, 2),
                FlSpot(5, 2),
                FlSpot(6, 1),
              ],
              isCurved: true,
              color: icons,
              barWidth: 2,
              isStrokeCapRound: false,
              belowBarData: BarAreaData(
                show: false,
                color: icons.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ),
    ),
    Favorites(
      name: 'Google',
      symbol: 'GOOGL',
      price: 2734.40,
      change: 0.32,
      changePercentage: 0.22,
      image: SvgPicture.asset(
        'assets/google.svg',
        width: 30,
        height: 30,
      ),
      isUptrend: false,
      chart: LineChart(
        LineChartData(
          gridData: const FlGridData(
            show: false,
          ),
          titlesData: const FlTitlesData(
            show: false,
          ),
          borderData: FlBorderData(
            show: false,
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 0),
                FlSpot(1, 3),
                FlSpot(2, 2),
                FlSpot(3, 5),
                FlSpot(4, 2),
                FlSpot(5, 2),
                FlSpot(6, 1),
              ],
              isCurved: true,
              color: icons,
              barWidth: 2,
              isStrokeCapRound: false,
              belowBarData: BarAreaData(
                show: false,
                color: icons.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ),
    ),
    Favorites(
      name: 'Amazon',
      symbol: 'AMZN',
      price: 3372.20,
      change: 0.32,
      changePercentage: 0.22,
      image: SvgPicture.asset(
        'assets/amazon.svg',
        width: 30,
        height: 30,
      ),
      isUptrend: false,
      chart: LineChart(
        LineChartData(
          gridData: const FlGridData(
            show: false,
          ),
          titlesData: const FlTitlesData(
            show: false,
          ),
          borderData: FlBorderData(
            show: false,
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 0),
                FlSpot(1, 3),
                FlSpot(2, 2),
                FlSpot(3, 5),
                FlSpot(4, 2),
                FlSpot(5, 2),
                FlSpot(6, 1),
              ],
              isCurved: true,
              color: icons,
              barWidth: 2,
              isStrokeCapRound: false,
              belowBarData: BarAreaData(
                show: false,
                color: icons.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ),
    ),
    Favorites(
      name: 'Microsoft',
      symbol: 'MSFT',
      price: 277.01,
      change: 0.32,
      changePercentage: 0.22,
      image: SvgPicture.asset(
        'assets/microsoft.svg',
        width: 30,
        height: 30,
      ),
      isUptrend: true,
      chart: LineChart(
        LineChartData(
          gridData: const FlGridData(
            show: false,
          ),
          titlesData: const FlTitlesData(
            show: false,
          ),
          borderData: FlBorderData(
            show: false,
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 0),
                FlSpot(1, 3),
                FlSpot(2, 2),
                FlSpot(3, 5),
                FlSpot(4, 2),
                FlSpot(5, 2),
                FlSpot(6, 1),
              ],
              isCurved: true,
              color: icons,
              barWidth: 2,
              isStrokeCapRound: false,
              belowBarData: BarAreaData(
                show: false,
                color: icons.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ),
    ),
  ];
  @override
  List<Object?> get props => [name, symbol, price, change, changePercentage];
}
