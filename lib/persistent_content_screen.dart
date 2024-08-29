import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PersistentContentScreen extends StatefulWidget {
  const PersistentContentScreen({super.key});

  @override
  State<PersistentContentScreen> createState() => _PersistentContentScreenState();
}

class _PersistentContentScreenState extends State<PersistentContentScreen> {

  @override
  Widget build(BuildContext context) {

    List<Map<String,dynamic>> allergens = [
      { 'txt': 'Cereals containing gluten', 'state': false },
      { 'txt': 'Crustaceanss', 'state': false },
      { 'txt': 'Eggs', 'state': false },
      { 'txt': 'Fish', 'state': false },
      { 'txt': 'Peanuts', 'state': false },
      { 'txt': 'Soybeans', 'state': false },
      { 'txt': 'Milk', 'state': false },
      { 'txt': 'Nuts', 'state': false },
      { 'txt': 'Celery', 'state': false },
      { 'txt': 'Mustard', 'state': false },
      { 'txt': 'Sesame seeds', 'state': false }, 
      { 'txt': 'Sulphur', 'state': false },
      { 'txt': 'state dioxide and sulphites', 'state': false }, 
      { 'txt': 'Lupin', 'state': false }, 
      { 'txt': 'Molluscs', 'state': false },
    ];

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            height: 100,
            alignment: Alignment.center,
            color: Colors.orange[100 * (index % 9)],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(
                  value: false,
                  fillColor: MaterialStateProperty.resolveWith((states) {
                    // If the button is pressed, return green, otherwise blue
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.green;
                    }
                    return Colors.blue;
                  }),
                  checkColor: Colors.amber,
                  side: const BorderSide(
                    color: Color(0xFF017AFE),
                    width: 2,
                  ),
                  onChanged: (value){},
                ),                              
                Expanded(child: Text(allergens[index]['txt'])),
              ],
            ),
          );
        },
        childCount: allergens.length,
      ),
    );
  }
}
