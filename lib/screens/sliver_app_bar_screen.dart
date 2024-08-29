import 'package:flutter/material.dart';

class SliverAppBarScreen extends StatelessWidget {
  const SliverAppBarScreen({super.key});

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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          bottom: false,
          left: false,
          right: false,
          top: false,
          maintainBottomViewPadding: false,
          minimum: EdgeInsets.zero,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 100,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                ),
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      pinned: true,
                      leading: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        }, 
                        icon: const Icon(Icons.arrow_back_outlined),
                      ),
                      title: const Text('Latte details'),
                      flexibleSpace: Image.asset('assets/images/item_details.jpg', fit: BoxFit.cover,),
                      expandedHeight: 340,
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
              
                    SliverList(
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
                    ),
              
              
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
              
              
                    SliverToBoxAdapter(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                          const Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Display image',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),                                     
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Display the default image to the user. This image canot be changed and is purely representative of the prodcut.',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),                                         
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                
                      ),
                    ),
                      
                  ],
                ),
              ),

              const Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
                child:                 FilledButton(
                  onPressed: () {},
                  child: const Text('Enabled'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}