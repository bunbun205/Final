import 'package:flutter/material.dart';

class Password_Reset extends StatelessWidget {
  const Password_Reset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromARGB(255, 234, 234, 234),
   body: Row(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(width:MediaQuery.of(context).size.width*0.5, color: Color.fromARGB(255, 40, 48, 79),),
      
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(height:MediaQuery.of(context).size.height*0.1,width: 500,),
           Text('Password Reset', textAlign:TextAlign.left,style: TextStyle(fontSize:32,fontWeight: FontWeight.bold),),
          Container(height:MediaQuery.of(context).size.height*0.05, width:MediaQuery.of(context).size.width*0.5,),
          Text('Enter your username/email for verification:', textAlign:TextAlign.center,style: TextStyle(fontSize:18),),
          Container(height:15,),
          Row(
            children: [
              Container(width:MediaQuery.of(context).size.width*0.14, child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText:'Email'),textAlign: TextAlign.center,),),
              Container(width:MediaQuery.of(context).size.width*0.05,),
              TextButton(onPressed: (){}, child:Text('Send Code',style: TextStyle(color:Colors.white,fontSize:25),),style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 40, 48, 79),padding:EdgeInsets.symmetric(horizontal:10,vertical:15)
                  ),),
            ],
          ),
          Container(height: 50,),
            Text('enter confirmation code sent to your email:',style: TextStyle(fontSize:18),),
            Container(height: 15,),
          Row(
            children: [
              Container(width: 75,),
              Container(width:MediaQuery.of(context).size.width*0.02, child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText:'Email'),textAlign: TextAlign.center,),),
              Container(width: 10,),
              Container(width:MediaQuery.of(context).size.width*0.02, child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText:'Email'),textAlign: TextAlign.center,),),
              Container(width: 10,),
              Container(width:MediaQuery.of(context).size.width*0.02, child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText:'Email'),textAlign: TextAlign.center,),),
              Container(width: 10,),
              Container(width:MediaQuery.of(context).size.width*0.02, child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText:'Email'),textAlign: TextAlign.center,),),
              Container(width: 10,),
              Container(width: 100,),
              TextButton(onPressed: (){}, child:Text('Verify',style: TextStyle(color:Colors.white,fontSize:25),),style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 40, 48, 79),padding:EdgeInsets.symmetric(horizontal:38,vertical:15)
                  ),),
            ],
          ),
                  Container(height:90,),
        Container(width:MediaQuery.of(context).size.width*0.4, child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText:'New Password'),),),
        Container(height: 50,),
         Container(width:MediaQuery.of(context).size.width*0.4, child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),hintText:'Confirm password'),),),
         Container(height: 60,),
          TextButton(onPressed: (){}, child:Text('Submit',style: TextStyle(color:Colors.white,fontSize:45),),style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 40, 48, 79),padding:EdgeInsets.symmetric(horizontal:50,vertical:18)
                  ),),
                  Container(height:5 ,),
        ],
      )
    ],),
    );
  }
}