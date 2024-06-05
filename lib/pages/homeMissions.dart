import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';
import 'package:flutter/material.dart';

import '../classes/Mission.dart';
import '../components/bottomBar.dart';
import '../services/mission_api.dart';


class HomeMissions extends StatefulWidget {
  const HomeMissions({super.key});

  @override
  State<HomeMissions> createState() => _HomeMissionsState();
}

class _HomeMissionsState extends State<HomeMissions> {
  List<Mission> missions = [];
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    getMissionFromApi().then((value) {
      print(value.length);
      setState(() {
        missions = value;
        //dummyArray=dataJson(launches) ;
        isLoading=false;
      });
    });
    return  Scaffold(
      appBar: AppBar(title: Text('Missions'),),
      body:isLoading? Center(child:CircularProgressIndicator()):Container(
        child:missions.length == 0 ? Center(child: Text('No data found')):ListView.builder(
          itemCount: missions.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
               // Navigator.push(context, MaterialPageRoute(builder: (context)=>launchDetails( launch: launches[index],)));
              },
              child: ListTile(
               // title: Text(missions[index].name),
              //  leading: Text(missions[index].datePrecision),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
