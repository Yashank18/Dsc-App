import 'package:dsc_chitkara/Authentication/AuthPage.dart';
import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  profilePage({Key key}) : super(key: key);

  @override
  _profilePageState createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: new FlatButton(
          child: Icon(Icons.arrow_back_ios,),
          onPressed: (){
             Navigator.push(
              context,
               MaterialPageRoute(builder: (context) => Auth()),
            );
          },
        ),
        title: new Text("Profile"),
        backgroundColor: Color.fromRGBO(195, 230, 228, 1),
        
      ),
      body: new Container(
          child: Row(
            children: <Widget>[
              new Center(child:Image.asset("images/dsc.png")),
              new Column(
                children: <Widget>[
                  new Center(child: new Text("Yashank",style: new TextStyle(fontSize: 16.0,color: Colors.blue),),),
                  new Center(child: new Text("CSE | 2nd Year",style: new TextStyle(fontSize: 16.0,color: Colors.blue)),),
                  new Center(child: new Text("Level 1",style: new TextStyle(fontSize: 16.0,color: Colors.blue)),),
                  
                  new Container(
                    child: Column(
                      children: <Widget>[
                        new Row(
                          children: <Widget>[
                            SizedBox(
                              child: new Text("Batch 1"),
                              height: 15.0,
                              width: 15.0,
                            ),
                            Padding(padding: EdgeInsets.only(left: 5.0),),
                            SizedBox(
                              child: new Text("Batch 2"),
                              height: 15.0,
                              width: 15.0,
                            ),
                             Padding(padding: EdgeInsets.only(left: 5.0),),
                            SizedBox(
                              child: new Text("Batch 3"),
                              height: 15.0,
                              width: 15.0,
                            ),
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            SizedBox(
                              child: new Text("Batch 4"),
                              height: 15.0,
                              width: 15.0,
                            ),
                            Padding(padding: EdgeInsets.only(left: 5.0),),
                            SizedBox(
                              child: new Text("Batch 5"),
                              height: 15.0,
                              width: 15.0,
                            ),
                             Padding(padding: EdgeInsets.only(left: 5.0),),
                            SizedBox(
                              child: new Text("Batch 6"),
                              height: 15.0,
                              width: 15.0,
                            ),
                          ],
                        ),
                        
                      ],
                    ),
                  )

                ],
              ),
            ],
          )
      ),
    );
  }

  
}