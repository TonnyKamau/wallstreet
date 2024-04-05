import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallstreet/colours/colours.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SizedBox(
          height: 70,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('Tapped on');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: icons,
                          width: 2,
                        ),
                      ),
                      
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/visa.svg',
                                  width: 50,
                                  height: 50,
                                ),
                                SvgPicture.asset(
                                  'assets/mastercard.svg',
                                  width: 50,
                                  height: 50,
                                ),
                              ],
                            ),
                          ),
                        ),
                  ),
                  
                  Material(
                    color: Colors.transparent,
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/plus.svg',
                        width: 50,
                        height: 50,
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
              CircleAvatar(
                backgroundColor: icons,
                radius: 25,
                child: GestureDetector(
                  onTap: () {
                    // perform click here
                  },
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/menu2.svg',
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
