import 'package:flutter/material.dart';
import 'package:wallstreet/colours/colours.dart';

class ScanCard extends StatelessWidget {
  const ScanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          color: icons,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),
      ),
      body: const Center(
        child: Text('Scan Card'),
      ),
    );
  }
}
