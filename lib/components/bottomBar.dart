import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';
import 'package:flutter/material.dart';

import '../pages/home.dart';
import '../pages/homeMissions.dart';
import '../pages/launchDetails.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0; //default index


  final List<Widget> _widgetOptions = [
    const Text('Launches'),
    const Text('Missions'),

  ];

  @override
  Widget build(BuildContext context) {
    return  CustomLineIndicatorBottomNavbar(
       // selectedColor: Colors.purple[50],
        unSelectedColor: Colors.black54,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        unselectedIconSize: 15,
        selectedIconSize: 20,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          if(_selectedIndex==0){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Home()),(route) => false);
          }
          else{
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>HomeMissions()),(route) => false);
          }

        },
        enableLineIndicator: false,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.top,
        // gradient: LinearGradient(
        //   colors: [Colors.pink, Colors.yellow],
        // ),
        customBottomBarItems: [
          CustomBottomBarItems(
            label: 'Launches',
            icon: Icons.home,

            isAssetsImage: false,
          ),
          CustomBottomBarItems(
            label: 'Missions',
            icon: Icons.account_box_outlined,

            isAssetsImage: false,
          ),

        ],
      );

  }
}