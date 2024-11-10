import 'dart:io';
import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  final File imageFile;

  const PhotoPage({super.key, required this.imageFile});

  @override
  Widget build(BuildContext context) {
    // Get screen height and width
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {}, // Open image picker when tapped
                icon: const ImageIcon(AssetImage("assets/brightness.png")),
              ),
              const SizedBox(width: 35),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(AssetImage("assets/contrast.png")),
              ),
              const SizedBox(width: 35),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(AssetImage("assets/crop.png")),
              ),
              const SizedBox(width: 35),
              IconButton(
                onPressed: () {},
                icon: const ImageIcon(AssetImage("assets/refresh.png")),
              ),
              const SizedBox(width: 30),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.black,
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
              child: Center(
                child: Text(
                  'Edit Bars',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
