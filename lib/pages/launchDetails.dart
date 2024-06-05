import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../classes/Launch.dart';
import '../components/LaunchDetailsCard.dart';
import '../components/bottomBar.dart';

class launchDetails extends StatelessWidget {
  launchDetails({super.key, required this.launch});

  Launch launch;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Details',
          style: TextStyle(color: Colors.black), // Text color
        ),
        backgroundColor:Colors.purple[50], // Appbar background color
        elevation: 0, // Remove appbar shadow
        iconTheme: IconThemeData(color: Colors.black), // Icon color

      ),
      backgroundColor: Colors.purple[50],
      body: DetailLaunchCard( launch: launch,),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
