import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../classes/Launch.dart';


class DetailLaunchCard extends StatelessWidget {
   DetailLaunchCard({super.key,required this.launch});
  Launch launch;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),

      child: Container(
        height: 600,
        width: 390,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all( Radius.circular(30.0)),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Text(
                'Name:',
                style: TextStyle(color: Color(0xFF81657C),fontWeight: FontWeight.bold,fontSize: 25),
              ),
              SizedBox(height: 5),
              Text(
                launch.name,
                style: TextStyle(color: Colors.black,fontSize: 22),
              ),
              SizedBox(height: 20),
              Text(
                'DatePrecision:',
                style: TextStyle(color: Color(0xFF81657C),fontWeight: FontWeight.bold,fontSize: 25),
              ),
              SizedBox(height: 5),
              Text(
                launch.datePrecision,
                style: TextStyle(color: Colors.black,fontSize: 22),
              ),
              SizedBox(height: 20),
              Text(
                'Id:',
                style: TextStyle(color: Color(0xFF81657C),fontWeight: FontWeight.bold,fontSize: 25),
              ),
              SizedBox(height: 5),
              Text(
                launch.id,
                style: TextStyle(color: Colors.black,fontSize: 22),
              ),
              SizedBox(height: 20),
              Text(
                'launchpad:',
                style: TextStyle(color: Color(0xFF81657C),fontWeight: FontWeight.bold,fontSize: 25),
              ),
              SizedBox(height: 5),
              Text(
                launch.launchpad,
                style: TextStyle(color: Colors.black,fontSize: 22),
              ),
              

              SizedBox(height: 20),
              Text(
                'dateLocal:',
                style: TextStyle(color: Color(0xFF81657C),fontWeight: FontWeight.bold,fontSize: 25),
              ),
              SizedBox(height: 5),
              Text(
                launch.dateLocal.toString(),
                style: TextStyle(color: Colors.black,fontSize: 22),
              ),



            ],
          ),
        ),
      ),

    );
  }
}
