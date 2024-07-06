import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 40, 48, 79),
    body: Column(
      children: [
        Container(height: MediaQuery.of(context).size.height*0.4,color: Color.fromARGB(255, 234, 234, 234),),
        Text('Subject Related Games:',style: TextStyle(color: Colors.white),textAlign: TextAlign.left,),
        Container(height: MediaQuery.of(context).size.height*0.3,color:Color.fromARGB(255, 234, 234, 234),),
        Text('explore new games:',style: TextStyle(color: Colors.white),textAlign: TextAlign.left,),
        Container(height: MediaQuery.of(context).size.height*0.25,color:Color.fromARGB(255, 234, 234, 234),),
        
      ],
    ),
    

    );
  }
}