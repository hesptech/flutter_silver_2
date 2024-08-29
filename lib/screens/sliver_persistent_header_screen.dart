import 'package:flutter/material.dart';
import 'package:flutter_sliver_2/screens/views/persistent_content_screen.dart';
import 'package:flutter_sliver_2/screens/views/persistent_header_screen.dart';

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
              pinned: true,
              floating: false,
              delegate: PersistentHeaderScreen(
                minExtent: 80.0,
                maxExtent: 340.0,
              ),
            ),


            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    height: 100,
                    alignment: Alignment.center,
                    color: Colors.orange[100 * (index % 9)],
                    child: Text('orange $index'),
                  );
                },
                childCount: 3,
              ),
            ),

            const PersistentContentScreen(),


            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(width: 10.0,),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text( 'Add custom variant',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),                      
                    ],
                  ),
                  const Spacer(), 
                  InkWell(
                    onTap: () {},
                    child: const Icon(Icons.arrow_right),
                  ),                 
                  const SizedBox(width: 20.0,),
                ],
              ),
            ),            
          ],
        ),
      ),
    );
  }
}