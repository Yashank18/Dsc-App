import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            
            title: Text("Developer Student Clubs",style: TextStyle(color: Colors.black),),
            actions: <Widget>[
              Icon(Icons.supervised_user_circle,color: Colors.black,size: 36.0,),
            ],
          ),
          //Curved Container
          body: newapp(),
         
            
            
            
          ),
           
        );
        
    
  }
}
class newapp extends StatelessWidget{

@override
  Widget build(BuildContext context) {

      return ListView(
        children: <Widget>[
          Image.asset('assets/dsc.png'),
          Container(
            height: 400,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(95.0),topRight: Radius.circular(95.0))
            ),
          
          )
        ],
      );
  

}
}