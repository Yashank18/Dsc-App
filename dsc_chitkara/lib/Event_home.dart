import 'package:dsc_chitkara/pastEventDetail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeEvents extends StatefulWidget {
  HomeEvents({Key key}) : super(key: key);

  @override
  _HomeEventsState createState() => _HomeEventsState();
}

class _HomeEventsState extends State<HomeEvents> {

  List data;
  List data2;

  // Function to get the JSON data
  Future<String> getJSONData() async {
    var response = await http.get(
      Uri.encodeFull("https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Data/pastEvents.json"),
    );

    setState(() {
      // Get the JSON data
      data  = json.decode(response.body)['results'];
      data2 =json.decode(response.body)['results2'];
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
    double screenWidth= MediaQuery.of(context).size.width;
    return WillPopScope(
       onWillPop: (){
       Navigator.of(context).pop();
      },
      child:Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          leading: FlatButton(
            child: Icon(Icons.arrow_back_ios,),onPressed: (){
               Navigator.of(context).pop();
            },),
          title: Text("Events",style: GoogleFonts.varelaRound(textStyle: TextStyle(color:Colors.black,),)),
          
        ),
        body: ListView(
          
          children: <Widget>[
            SizedBox(height: screenHeight*0.06,),
             Padding(padding:EdgeInsets.only(left: 10),child: Text("Upcoming Events",style: GoogleFonts.openSans(textStyle:TextStyle(fontWeight: FontWeight.w700,fontSize: 25)),textAlign: TextAlign.left,)),
            SizedBox(height: screenHeight*0.06,),
            Container(
              height: screenHeight*0.4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data == null ? 0 : data.length,
                shrinkWrap: true,
           itemBuilder: (c, i){
             return InkWell(
               onTap: (){
                 Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PastEvent(shareData:data[i]['shareData'],speaker:data2[i]['speaker'],id: data[i]['id'],date: data[i]['myDate'],time: data[i]['myTime'],location: data[i]['myLocation'],poster: data[i]['posterUrl'],link: data[i]['myLink'],heading: data[i]['heading'],desc: data[i]['description'],)),
                              );
                        },
                     child: Card(
                     margin: EdgeInsets.only(left: 7),
                     elevation: 2.0,
                     
                     
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Container(
                           decoration: new BoxDecoration(
                             
                             image:DecorationImage(fit: BoxFit.cover,image: CachedNetworkImageProvider(data[i]['image']))
                           
                           ),
                           width: screenWidth*0.9,
                           height: screenHeight*0.27,
                           
                         ),
                         SizedBox(height: screenHeight*0.006,),
                         Padding(padding:EdgeInsets.symmetric(horizontal:10,vertical: 5),child: Text(data[i]['heading'],style: GoogleFonts.openSans(textStyle:TextStyle(fontSize: 20.0,fontWeight: FontWeight.w800)),textAlign: TextAlign.left)),
                         Padding(padding: EdgeInsets.symmetric(horizontal: 10,),child:Text(data[i]['description'],style:GoogleFonts.varelaRound()))
                       ],
                     ),
                   ),
             );
           },
           
              )
            ),
            SizedBox(height: screenHeight*0.05,),
             Padding(padding:EdgeInsets.only(left: 10),child: Text("Past Events",style: GoogleFonts.openSans(textStyle:TextStyle(fontWeight: FontWeight.w700,fontSize: 25)),textAlign: TextAlign.left,)),
            SizedBox(height: screenHeight*0.05,),
            Container(
              height: screenHeight*0.4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data == null ? 0 : data2.length,
                shrinkWrap: true,
           itemBuilder: (c, i){
             return InkWell(
               onTap: (){
                 Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PastEvent(shareData:data2[i]['shareData'],speaker:data2[i]['speaker'],id: data2[i]['id'],date: data2[i]['myDate'],time: data2[i]['myTime'],location: data2[i]['myLocation'],poster: data2[i]['posterUrl'],link: data2[i]['myLink'],heading: data2[i]['heading'],desc: data2[i]['description'],)),
                              );
               },
                            child: Card(
                     margin: EdgeInsets.only(left: 7),
                     elevation: 2.0,
                     
                     
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Container(
                           decoration: new BoxDecoration(
                             
                             image:DecorationImage(fit: BoxFit.cover,image: CachedNetworkImageProvider(data2[i]['image']))
                           
                           ),
                           width: screenWidth*0.9,
                           height: screenHeight*0.27,
                           
                         ),
                         SizedBox(height: screenHeight*0.006,),
                         Padding(padding:EdgeInsets.symmetric(horizontal:10,vertical: 5),child: Text(data2[i]['heading'],style: GoogleFonts.openSans(textStyle:TextStyle(fontSize: 20.0,fontWeight: FontWeight.w800)),textAlign: TextAlign.left)),
                         Padding(padding: EdgeInsets.symmetric(horizontal: 10,),child:Text(data2[i]['description'],style:GoogleFonts.varelaRound()))
                       ],
                     ),
                   ),
             );
           },
          
              )
            ),
            SizedBox(height: screenHeight*0.05,),
          ],
        ),
      )
    );
  }
}
