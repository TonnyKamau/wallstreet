import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallstreet/colours/colours.dart';
import 'package:wallstreet/models/favorites.dart';
import 'package:wallstreet/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool isShowValue; // Declare isShowValue variable

  @override
  void initState() {
    super.initState();
    isShowValue =
        false; // Initialize isShowValue to false when first opening the homepage
  }

  @override
  Widget build(BuildContext context) {
    final favorites = Favorites.favorites;
    return Scaffold(
      backgroundColor: browned,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Text(
                  'Current Value',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                    color: icons,
                  ),
                ),
                //show balance icon
                const SizedBox(width: 5),
                Material(
                  color: Colors.transparent,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        // Toggle isShowValue when IconButton is pressed
                        isShowValue = !isShowValue;
                      });
                    },
                    icon: isShowValue
                        ? SvgPicture.asset(
                            'assets/eye.svg',
                            width: 30,
                            height: 30,
                          )
                        : SvgPicture.asset(
                            'assets/eye-off.svg',
                            width: 30,
                            height: 30,
                          ),
                    splashColor: Colors.transparent,
                    highlightColor: Colors
                        .transparent, // Additionally set highlight color to transparent
                    hoverColor: Colors.transparent,
                  ),
                ),
              ],
            ),
          ),
          CurrentValue(
            isShowValue: isShowValue,
          ),
          const Transact(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Favorites',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: labels,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SizedBox(
              height: 250,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Favorites.favorites.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: favorites[index].isFavorite
                        ? FavoriteCard(
                            name: favorites[index].name,
                            symbol: favorites[index].symbol,
                            price: favorites[index].price,
                            change: favorites[index].change,
                            changePercentage: favorites[index].changePercentage,
                            image: favorites[index].image,
                            isUptrend: favorites[index].isUptrend,
                            chart: favorites[index].chart,
                          )
                        : const SizedBox.shrink(),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Portfolio',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                    color: icons,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/layers.svg',
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
               padding: const EdgeInsets.only(top: 0, bottom: 10, left: 10, right: 10),
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: Favorites.favorites.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: favorites[index].inPortfolio
                          ? PortfolioCard(
                              name: favorites[index].name,
                              symbol: favorites[index].symbol,
                              price: favorites[index].price,
                              portfolioValue: favorites[index].portfolioValue,
                              changePercentage: favorites[index].changePercentage,
                              image: favorites[index].image,
                              chart: favorites[index].chart,
                              isUptrend: favorites[index].isUptrend,
                            )
                          : const SizedBox.shrink(),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
