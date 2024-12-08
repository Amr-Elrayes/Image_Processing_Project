import 'dart:io';
import 'package:flutter/material.dart';

class Smooth extends StatelessWidget {
  final File imageFile;

  const Smooth({super.key, required this.imageFile});

  @override
  Widget build(BuildContext context) {
    // Get screen width
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.white,
  automaticallyImplyLeading: false,
  title: SingleChildScrollView(
    scrollDirection: Axis.horizontal, // Make the Row scrollable horizontally
    child: Row(
      children: [
        IconButton(
          onPressed: () {}, // Open image picker when tapped
          icon: const ImageIcon(AssetImage("assets/Mean.png")),
        ),
        IconButton(
          onPressed: () {},
          icon: const ImageIcon(AssetImage("assets/weighted.png")),
        ),
        IconButton(
          onPressed: () {},
          icon: const ImageIcon(AssetImage("assets/Gussian.png")),
        ),
        IconButton(
          onPressed: () {},
          icon: const ImageIcon(AssetImage("assets/Billateral.png")),
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
          icon: const ImageIcon(AssetImage("assets/Median.png")),
        ),
        // Add more icons here as needed
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




