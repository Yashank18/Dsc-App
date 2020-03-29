import 'package:dsc_chitkara/main.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  AboutUs({Key key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
        title: Text("About Us"),
        
      ),
      body: Container(
        color: Color.fromRGBO(39, 39, 47, 1),
        child: ListView(
          padding: EdgeInsets.only(top:70,left:10,right:10),
          children: <Widget>[
            Image.asset("images/dsc.png"),
            SizedBox(height: 30,),
            Center(child: Text("About Us",style: TextStyle(color: Color.fromRGBO(251, 219, 134, 1),fontSize: 40),)),
            SizedBox(height:20),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: MediaQuery.of(context).size.width ,
              height: 1,
              color:Color.fromRGBO(55, 239, 187, 1),
            ),
            SizedBox(height: 30,),
            Text("Developer Student Clubs are university based community groups for students interested in Google developer technologies. Students from all undergraduate or graduate programs with an interest in growing as a developer are welcome. By joining a DSC, students grow their knowledge in a peer-to-peer learning environment and build solutions for local businesses and their community. Developer Student Clubs, Chitkara University Mainly focuses on Overall development of Society",textAlign: TextAlign.justify,style: TextStyle(color:Colors.white,fontSize:15),)
          ],
        ),
      ),
    );
  }
}