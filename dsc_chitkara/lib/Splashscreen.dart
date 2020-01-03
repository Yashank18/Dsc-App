import 'package:dsc_chitkara/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
initState()
{
  FirebaseAuth.instance.
  currentUser().
  then((currentUser)=>{
    if(currentUser==null)
    {
      Navigator.pushReplacementNamed(context, "/auth"),
    }
    else
    {
      Navigator.push(
              context,
               MaterialPageRoute(builder: (context) => HomeScreen()),
            ),
                        
    }
  })
  .catchError((err)=>print(err));
  super.initState();
}



  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         backgroundColor: Color.fromRGBO(195, 230, 228, 1),
         body: Center(
           child: Container(
             alignment: Alignment.center,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 
                 Image.asset("images/dsc.png"),
                 
                 
               ],
             ),
           ),
         ),
       )
    );
  }
}