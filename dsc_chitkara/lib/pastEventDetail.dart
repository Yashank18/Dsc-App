import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class PastEvent extends StatefulWidget {
  final String title;
  final int id;
  PastEvent({Key key ,@required this.title, @required this.id}) : super(key: key);

  @override
  _PastEventState createState() => _PastEventState();
}

class _PastEventState extends State<PastEvent> {
  List data;
  

  // Function to get the JSON data
  Future<String> getJSONData() async {
    var response = await http.get(
      Uri.encodeFull("https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Data/pastEvents.json"),
    );

    setState(() {
      // Get the JSON data
      data  = json.decode(response.body)['results'];
      
    });

    return "Successfull";
  }
   @override
  void initState() { 
    super.initState();
    this.getJSONData();
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
          leading: new FlatButton(
            child: Icon(Icons.arrow_back_ios,color: Colors.black),
            onPressed: (){
               Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.white,
          title: new Text("Events",style: GoogleFonts.varelaRound(textStyle:TextStyle(color:Colors.black))),
           
        ),
        body: Container(
          height: screenHeight,
          width: screenWidth,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                SizedBox(height: screenHeight*0.03,),
                Container(child:Text(data[widget.id]['myheading'],style: GoogleFonts.varelaRound(textStyle:TextStyle(fontSize: 25,fontWeight: FontWeight.w700)),)),
                SizedBox(height: screenHeight*0.03,),
                Container(
                  child:Row(
                    children: <Widget>[
                      
                      Container(
                        height: screenHeight*0.32,
                        width: screenWidth*0.45,
                        child: Image(image:CachedNetworkImageProvider(data[widget.id]['posterUrl']),)
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                             Container(child:Text(data[widget.id]['myDate'],style: GoogleFonts.varelaRound(textStyle:TextStyle(fontSize: 13,fontWeight: FontWeight.w800)),)),
                             Container(child:Text(data[widget.id]['myTime'],style: GoogleFonts.varelaRound(textStyle:TextStyle(fontSize: 12,fontWeight: FontWeight.w100)),)),
                             SizedBox(height: screenHeight*0.06,),
                             Container(child:Text("Venue",style: GoogleFonts.varelaRound(textStyle:TextStyle(fontSize: 13,fontWeight: FontWeight.w800)),)),
                             Container(child:Text(data[widget.id]['myLocation'])),
                             SizedBox(height: screenHeight*0.06,),
                             Container(child:Text("Link",style: GoogleFonts.varelaRound(textStyle:TextStyle(fontSize: 13,fontWeight: FontWeight.w800)),)),
                             Container(child:Text(data[widget.id]['myLink'])),
                            ],
                          ),
                        ),
                        ],
                    
                  )
                ),
                SizedBox(height: screenHeight*0.05,),
                          Card(child: Padding(padding:EdgeInsets.all(20),child: Text(data[widget.id]['description'],style: GoogleFonts.varelaRound(textStyle:TextStyle(height: 1.5)),)),)
              ],
            ),
          )
          
        )
    );
  }
}