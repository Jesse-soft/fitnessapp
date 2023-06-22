import 'package:fitnessapp/Controller/BottomNavController.dart';
import 'package:fitnessapp/View/Home/Action.dart';
import 'package:fitnessapp/View/Home/Home.dart';
import 'package:fitnessapp/View/Home/Progress.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyNavigationBar extends StatelessWidget {
  var bottomNavBar = Get.put(BottomNavController());
  // var homeController =Get.put(HomeController());
  // int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    ActionView(),
    Progressclass(),
  ];

  void _onItemTapped(int index) {
    bottomNavBar.selectedIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Obx(
        () => Center(
          child: _widgetOptions.elementAt(bottomNavBar.selectedIndex.value),
        ),
      ),
      bottomNavigationBar: Obx(
        () => Container(
          width: width,
          height: 60,
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: BottomNavigationBar(
              showUnselectedLabels: true,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    label: "Home",
                    icon: Icon(Icons.home),
                    // title: Text('Home'),
                    backgroundColor: Colors.black87),
                BottomNavigationBarItem(
                  label: "Action",
                  icon: Icon(Icons.directions_run),

                  //testing

                  // title: Text('Profile'),
                  backgroundColor: Colors.black87,
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.self_improvement),
                    label: "Progress",
                    // title: Text('Search'),
                    backgroundColor: Colors.black87),
              ],
              type: BottomNavigationBarType.shifting,
              currentIndex: bottomNavBar.selectedIndex.value,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
              iconSize: 25,
              onTap: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
