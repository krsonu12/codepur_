import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          // Image.asset(AppAssetImages.empty),
          SizedBox(height: 30),
          Text(
            'Empty',
          )
        ],
      ),
    );
  }
}
