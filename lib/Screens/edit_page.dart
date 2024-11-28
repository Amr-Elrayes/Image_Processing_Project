import 'dart:io';
import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  final File imageFile;

  const PhotoPage({super.key, required this.imageFile});

  @override
  Widget build(BuildContext context) {
    // Get screen width
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          // Use a Row with spaceBetween to distribute icons evenly
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {}, // Open image picker when tapped
                  icon: const ImageIcon(AssetImage("assets/brightness.png")),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(AssetImage("assets/contrast.png")),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(AssetImage("assets/crop.png")),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(AssetImage("assets/refresh.png")),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(AssetImage("assets/refresh.png")),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(AssetImage("assets/refresh.png")),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const ImageIcon(AssetImage("assets/refresh.png")),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body:
      
      Column(
        
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
              child: const Center(
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
