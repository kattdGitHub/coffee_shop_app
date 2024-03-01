import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CartScreen.dart';
import 'home_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: IndexedStack(
        index: currentIndex,
        children: [
          HomePage(),
          CartScreen(),
          SizedBox(),
          SizedBox(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (value) => setState(() {
          currentIndex = value;
        },),
        selectedItemColor: Colors.deepOrange, // Change this to the color you want for selected item
        unselectedItemColor:Color(0xff4E5053),
         // Change this to the color you want for unselected items
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop_2_outlined,
            ),
            label: 'Item 3',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: 'Item 4',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bell),
            label: 'Item 5',
          ),
        ],
      ),
    );
  }
}
