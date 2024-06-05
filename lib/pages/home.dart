import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:orange_test/components/Card.dart';
import 'package:orange_test/services/launch_api.dart';

import '../classes/Launch.dart';
import '../components/bottomBar.dart';
import '../db/dbHelper.dart';
import 'launchDetails.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Launch> launches = [];
  List<Launch> launchesNotSorted = [];
  late List dummyArray ;
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    getLaunchFromApi().then((value) {
      print(value.length);
      setState(() {
        launches=value;
        launches.sort((a,b) => a.dateLocal.compareTo(b.dateLocal));;
        dummyArray=dataJson(launches) ;
        isLoading=false;
      });
    });

    return Scaffold(
        appBar: AppBar(
          title: Text('Launches'),
        ),
        body: isLoading? Center(child:CircularProgressIndicator()):ListView.builder(
          itemCount: launches.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>launchDetails( launch: launches[index],)));
              },
              child: CardLaunch(launch: launches[index]),
            );
          },
        ),
      bottomNavigationBar: const BottomBar(),
      // floatingActionButton: FloatingActionButton(
      //   child: Text('Add datbase local'),
      //   onPressed: ()async{
      //     await LocalDatabase().addDataLocally(wholedata: jsonEncode([dummyArray]));
      //   setState((){});
      //   },
      // )


        floatingActionButton: FloatingActionButton(
          child: Text('Read database local'),
          onPressed: ()async{
            await LocalDatabase().readalldata();
          },
        )




    );
  }
}
