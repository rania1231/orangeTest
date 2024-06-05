import 'package:flutter/material.dart';

import '../classes/Launch.dart';
import '../pages/launchDetails.dart';


class CardLaunch extends StatefulWidget {
   CardLaunch({super.key,required this.launch});
  Launch launch;
  @override
  State<CardLaunch> createState() => _CardLaunchState();
}

class _CardLaunchState extends State<CardLaunch> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>launchDetails( launch: widget.launch,)));
        },
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: ListTile(
            title: Text(
              widget.launch.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Text((widget.launch.dateLocal).toString())
          ),
        ),
      ),
    );
  }
}
