import 'package:flutter/material.dart';
import 'package:flutter_sliver_2/home_screen.dart';

class HomeNavbarScreen extends StatelessWidget {
  const HomeNavbarScreen({super.key});

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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen()));
                  }, 
                  child: const Text('SliverAppBar')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}