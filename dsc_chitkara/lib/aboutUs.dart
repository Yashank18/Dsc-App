import 'package:dsc_chitkara/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutUs extends StatefulWidget {
  AboutUs({Key key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth= MediaQuery.of(context).size.width;
    return Scaffold(
       appBar: new AppBar(
        backgroundColor: Colors.white,
        leading: FlatButton(child: Icon(Icons.arrow_back_ios,color: Colors.black,),onPressed: (){
                                  Navigator.pop(context);
                            
                                },),
        title: Text("About Us",style:GoogleFonts.varelaRound(textStyle:TextStyle(color:Colors.black))),
        
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.only(top:70,left:10,right:10),
          children: <Widget>[
            Image.asset("images/dsc.png"),
            SizedBox(height: screenHeight*0.1,),
             Center(child: Text("What is DSC ?",style: GoogleFonts.varelaRound(textStyle:TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.w800),) )),
            
            SizedBox(height: screenHeight*0.06,),
             Card(elevation: 2.0,child: Padding(padding:EdgeInsets.all(15),child: Text("Developer Student Clubs are university based community groups for students interested in Google developer technologies. Students from all undergraduate or graduate programs with an interest in growing as a developer are welcome. By joining a DSC, students grow their knowledge in a peer-to-peer learning environment and build solutions for local businesses and their community. Developer Student Clubs, Chitkara University Mainly focuses on Overall development of Society",style: GoogleFonts.varelaRound(textStyle:TextStyle(height: 1.5)),)),),
             SizedBox(height: screenHeight*0.06,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                 
                IconButton(
                  icon: Icon(
                  FontAwesomeIcons.instagram,
                  size: 50,
                  color:Colors.red.shade400
                  ),
                  onPressed: () {
                                        
                  },
                 ),
                  IconButton(
                  icon: Icon(
                  FontAwesomeIcons.facebook,
                  size: 50,
                  color:Colors.blue.shade400
                  ),
                  onPressed: () {
                                        
                  },
                 ),
                  IconButton(
                  icon: Icon(
                  FontAwesomeIcons.github,
                  size: 50,
                  color:Colors.black
                  ),
                  onPressed: () {
                                        
                  },
                 ),
               ],
             ),
             SizedBox(height: screenHeight*0.02,),
          ]
        ),
      ),
    );
  }
}