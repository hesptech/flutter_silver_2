import 'package:flutter/material.dart';
import 'package:flutter_sliver_2/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SliverAppBarScreen(),
      //home: SliverPersistentHeaderScreen(),
      home: HomeScreen(),
    );
  }
}
