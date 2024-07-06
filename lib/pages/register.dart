import 'package:flutter/material.dart';

class Register_Page extends StatelessWidget {
  const Register_Page({super.key});

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
        Container(height: MediaQuery.of(context).size.height*0.15,width:MediaQuery.of(context).size.width*0.5,),
        Text("Register",style: TextStyle(fontSize:72,),textAlign: TextAlign.left,),
        Container(height:25,),
        Container(width:MediaQuery.of(context).size.width*0.4, child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText:'Username'),),),
        Container(height: 25,),
         Container(width:MediaQuery.of(context).size.width*0.4, child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText:'Grade/Class'),),),
         Container(height: 25,),
          Container(width:MediaQuery.of(context).size.width*0.4, child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText:'Email'),),),
          Container(height:25,),
          Container(width:MediaQuery.of(context).size.width*0.4, child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText:'Password'),),),
         Container(height: 25,),
         Container(width:MediaQuery.of(context).size.width*0.4, child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText:'Confirm Password'),),),
         Container(height: 60,),
          TextButton(onPressed: (){}, child:Text('Register',style: TextStyle(color:Colors.white,fontSize:45),),style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 40, 48, 79),padding:EdgeInsets.symmetric(horizontal:50,vertical:18)
                  ),),
                  Container(height:5 ,),
      ],)
    ],),
    );
  }
}