import 'dart:io';
import 'package:flutter/material.dart';

class Restoration extends StatelessWidget {
  final File imageFile;

  const Restoration({super.key, required this.imageFile});

  @override
  Widget build(BuildContext context) {
    // Get screen width
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {}, // Open image picker when tapped
                icon: const ImageIcon(AssetImage("assets/arithmetic_mean.png")), // A
              ),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(AssetImage("assets/Gussian.png")), // geometric G
              ),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(AssetImage("assets/Histogram.png")), //harmonic   H
              ),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(AssetImage("assets/Contrast.png")), // contra_harmonic  C
              ),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(AssetImage("assets/Median.png")), // median M
              ),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(AssetImage("assets/Max.png")),
              ),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(AssetImage("assets/Min.png")),
              ),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(AssetImage("assets/midpoint.png")),
              ),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(AssetImage("assets/Alpha.png")),
              ),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(AssetImage("assets/Adabtev_local.png")),
              ),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(AssetImage("assets/adaptive_median.png")),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Image section - uses Expanded to fill available space
          Expanded(
            flex: 3, // This will take 3/4 of the available screen height
            child: Image.file(
              imageFile,
              fit: BoxFit.contain,
              width: screenWidth,
            ),
          ),
          // Bottom container - takes the remaining space
          Expanded(
            flex: 1, // This will take 1/4 of the available screen height
            child: Container(
              width: screenWidth,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}




