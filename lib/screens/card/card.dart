import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:wallstreet/colours/colours.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brownedLight,
      appBar: AppBar(
        leading: Material(
          color: Colors.transparent,
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
            color: icons,
            splashColor: Colors.transparent,
            highlightColor: Colors
                .transparent, // Additionally set highlight color to transparent
            hoverColor:
                Colors.transparent, // Set hover color to transparent if needed
          ),
        ),
        title: const Center(
          child: Text(
            'Add New Card',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: icons,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () {
                // card scan functionality
               Get.toNamed('scan_card');
              },
              icon: SvgPicture.asset(
                'assets/scan.svg',
                width: 30,
                height: 30,
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
      body: Column(
        children: [],
      ),
    );
  }
}
