import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallstreet/colours/colours.dart';
import 'package:wallstreet/models/favorites.dart';
import 'package:wallstreet/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final favorites = Favorites.favorites;
    return Scaffold(
      backgroundColor: browned,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Current Value',
                style: GoogleFonts.poppins(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                  color: icons,
                ),
              ),
            ),
            const CurrentValue(),
            const Transact(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Favorites',
                style: GoogleFonts.poppins(
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
                      child: FavoriteCard(
                        name: favorites[index].name,
                        symbol: favorites[index].symbol,
                        price: favorites[index].price,
                        change: favorites[index].change,
                        changePercentage: favorites[index].changePercentage,
                        image: favorites[index].image,
                        isUptrend: favorites[index].isUptrend,
                        chart: favorites[index].chart,
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

