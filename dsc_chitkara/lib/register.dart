import 'package:dsc_chitkara/main.dart';
import 'package:flutter/material.dart';

class registerPage extends StatefulWidget {
  registerPage({Key key}) : super(key: key);

  @override
  _registerPageState createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
        backgroundColor: Color.fromRGBO(52, 52, 62, 1),
        leading: FlatButton(child: Icon(Icons.arrow_back_ios,color: Colors.white,),onPressed: (){
                                  Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyApp()),
                            );
                                },),
        title: Text("Registration Form"),
        
      ),
    );
  }
}