import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// This Flutter code creates a simple mobile app that displays a page with three social media icons
// (Facebook, Twitter, Instagram), each inside a circular border.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Task 8',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Homley",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 55,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Facebook icon with border
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.blue, // Border color
                      width: 2.0, // Border width
                    ),
                  ),
                  padding: const EdgeInsets.all(8), // Add padding around the icon
                  child: SvgPicture.asset(
                    "assets/imgs/icons8-facebook-logo.svg",
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                ),

                // Twitter icon with border
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.blue, // Border color
                      width: 2.0, // Border width
                    ),
                  ),
                  padding: const EdgeInsets.all(8), // Add padding around the icon
                  child: SvgPicture.asset(
                    "assets/imgs/icons8-twitter-logo.svg",
                    width: 50,
                    height: 50,
                    color: Colors.lightBlueAccent,
                  ),
                ),

                // Instagram icon with border
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.blue, // Border color
                      width: 2.0, // Border width
                    ),
                  ),
                  padding: const EdgeInsets.all(8), // Add padding around the icon
                  child: SvgPicture.asset(
                    "assets/imgs/icons8-instagram-logo.svg",
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
