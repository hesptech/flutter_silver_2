import 'package:flutter/material.dart';
import 'package:flutter_sliver_2/persistent_content_screen.dart';
import 'package:flutter_sliver_2/persistent_header_screen.dart';

class SliverPersistentHeaderScreen extends StatelessWidget {
  const SliverPersistentHeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      top: false,
      maintainBottomViewPadding: false,
      minimum: EdgeInsets.zero,
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              pinned: false,
              floating: true,
              delegate: PersistentHeaderScreen(
                minExtent: 150.0,
                maxExtent: 340.0,
              ),
            ),
            const PersistentContentScreen(),
          ],
        ),
      ),
    );
  }
}