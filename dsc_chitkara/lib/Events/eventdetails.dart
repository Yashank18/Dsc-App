import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/material.dart' as prefix0;

 class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            //Image left here for the background for the login page
          ),
          child: Stack(
            children: <Widget>[
              Center(
                child: Container(
                  margin: const EdgeInsets.all(48.0),
                  padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 48.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 1.0,sigmaY: 1.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        //Icon in the box
                        Icon(Icons.account_circle,size: 64,color: Colors.grey.shade800,),
                        const SizedBox(height: 10.0,),
                        Text("Welcome to DSC Chitkara",
                        style:TextStyle(
                            color: Colors.orange.shade700,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                        ),),
                        const SizedBox(height: 20.0,),
                        Text("Official App for Developer Student Cluds - Chitkara University", textAlign: TextAlign.center,style: TextStyle(fontSize: 18.0),)

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
      ),
      
    );
  }
}