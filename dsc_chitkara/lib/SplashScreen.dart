import 'package:dsc_chitkara/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
    
    return Scaffold(
          body: Center(
         child: Container(
           child: Container(
                          height: 70.0,
                          width: 200.0,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.all( const Radius.circular(75.0)),
                            color: Colors.white,
                          ),
                        child: FlatButton(
                           child: new Text("Enter App",textAlign: TextAlign.center,
                              style: TextStyle( fontSize: 24.0,),),
                               onPressed: (){
                                  Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=>HomeScreen())
                                );
                               },
                          ),
                      ),
         )
      ),
    );
  }
}