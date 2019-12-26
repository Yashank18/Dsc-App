import 'package:dsc_chitkara/Authentication/login.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:dsc_chitkara/Authentication/signup.dart';
class Auth extends StatelessWidget {
  const Auth({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         decoration: new BoxDecoration(
          image: new DecorationImage(image: new AssetImage("images/stars.jpg"),fit: BoxFit.cover)
        ),
          height: double.infinity,
          
          child: Stack(
            children: <Widget>[
              Center(
                child: Container(
                  margin: const EdgeInsets.all(48.0),
                  padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 48.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.85),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 1.0,sigmaY: 1.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        //Icon in the box
                        Icon(Icons.account_circle,size: 64,color: Colors.black,),
                        const SizedBox(height: 10.0,),
                        Center(

                        child:
                         Text("Welcome to DSC",
                          style:TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              

                          ),),
                        ),
                        const SizedBox(height: 20.0,),
                        

                        SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                              elevation:0,
                              highlightElevation: 0,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                              child: Text("Create Account"),
                              onPressed: (){
                                Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => SignupPage()),
                                            );
                              },
                          ),
                        ),
                        const SizedBox(height: 30.0,),
                        Text.rich(TextSpan(
                          children: [
                            TextSpan(text: "Already have account? "),
                            WidgetSpan(
                              child: InkWell(
                                child: Text("  Log In", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                                onTap: (){
                                  Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => LoginPage()),
                                            );
                                },
                              )
                            )
                          ]
                        ))
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