import 'dart:async';

import 'package:flutter/material.dart';
import 'package:youtube_clone/app/Utils/images.dart';
import 'package:youtube_clone/app/views/dashboard/dashboard_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SlashScreenState createState() => _SlashScreenState();
}

class _SlashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3) ,() {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>DashboardPage())
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
child: Center(
  child: Image.asset(Images.youtube ,width: 150 ,height: 150,),
),
      
    );
  }
}