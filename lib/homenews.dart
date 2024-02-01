import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:form/newspage1.dart';
import 'package:google_fonts/google_fonts.dart';

class splscreen extends StatefulWidget {
  const splscreen({super.key});

  @override
  State<splscreen> createState() => _splscreenState();
}

class _splscreenState extends State<splscreen> {



  @override
  void initState(){
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));

    });
  }
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height*1;
    final width = MediaQuery.sizeOf(context).width *1 ;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/newspic.jpg',
              fit: BoxFit.cover,
              width: width* .9,
              height: height * .5,

            ),
            SizedBox(
              height: height * 0.04,
            ),
            Text('CodiMasters',style: GoogleFonts.anton
              (letterSpacing: 6,color: Colors.grey.shade700),),
            Text('Top Headlines',style: GoogleFonts.anton
              (letterSpacing: 6,color: Colors.grey.shade700),),
            SpinKitChasingDots(
              color: Colors.greenAccent,
              size: 40,

            ),

            
          ],
        ),
      )
    );
  }
}
