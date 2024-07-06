import 'package:flutter/material.dart';

class Login_Page extends StatelessWidget {
  const Login_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Color.fromARGB(255, 234, 234, 234),
   body: Row(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(width:MediaQuery.of(context).size.width*0.5, color: Color.fromARGB(255, 40, 48, 79),),
      Column(children: [
        Container(height: MediaQuery.of(context).size.height*0.25,width:MediaQuery.of(context).size.width*0.5,),
        Text("Welcome Back",style: TextStyle(fontSize:72,),),
        Container(height:15,),
        Container(width:MediaQuery.of(context).size.width*0.4, child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText:'Username/Email'),),),
        Container(height: 50,),
         Container(width:MediaQuery.of(context).size.width*0.4, child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText:'password'),),),
         Container(height: 5,),
         Container(width:MediaQuery.of(context).size.width*0.4, height: 20, child:Text('Forgot password',textAlign:TextAlign.right,),),
         Container(height: 60,),
          TextButton(onPressed: (){}, child:Text('Login',style: TextStyle(color:Colors.white,fontSize:45),),style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 40, 48, 79),padding:EdgeInsets.symmetric(horizontal:50,vertical:18)
                  ),),
                  Container(height:5 ,),
                  Text('new user? register here',),
      ],)
    ],) ,
    );
  }
}