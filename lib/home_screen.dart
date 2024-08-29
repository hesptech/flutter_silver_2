import 'package:flutter/material.dart';
import 'package:flutter_sliver_2/custom_bottom_navigation.dart';
import 'package:flutter_sliver_2/sliver_app_bar_screen.dart';
import 'package:flutter_sliver_2/sliver_persistent_header_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SliverAppBarScreen()));
                  }, 
                  child: const Text('SliverAppBar')
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SliverPersistentHeaderScreen()));
                  }, 
                  child: const Text('SliverPersistentHeader')
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CustomBottomNavigation()));
                  }, 
                  child: const Text('NavigationBar')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}