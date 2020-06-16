import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:share/share.dart';

class PastEvent extends StatefulWidget {
  final String heading;
  final String date;
  final String time;
  final String location;
  final String link;
  final String desc;
  final String poster;
  final String shareData;
  final String speaker;
  final int id;
  PastEvent(
      {Key key,
      @required this.speaker,
      @required this.shareData,
      @required this.poster,
      @required this.id,
      @required this.heading,
      @required this.date,
      @required this.time,
      @required this.link,
      @required this.location,
      @required this.desc})
      : super(key: key);

  @override
  _PastEventState createState() => _PastEventState();
}

class _PastEventState extends State<PastEvent> {
  List data;

  // Function to get the JSON data
  Future<String> getJSONData() async {
    var response = await http.get(
      Uri.encodeFull(
          "https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Data/pastEvents.json"),
    );

    setState(() {
      // Get the JSON data
      data = json.decode(response.body)['results'];
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
            child: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.white,
          title: new Text("Events",
              style: GoogleFonts.varelaRound(
                  textStyle: TextStyle(color: Colors.black))),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  final RenderBox box = context.findRenderObject();
                  Share.share("${widget.shareData}",
                      subject: "${widget.heading}",
                      sharePositionOrigin:
                          box.localToGlobal(Offset.zero) & box.size);
                },
                child: Icon(Icons.share))
          ],
        ),
        body: Container(
            height: screenHeight,
            width: screenWidth,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Container(
                      child: Text(
                    widget.heading,
                    style: GoogleFonts.varelaRound(
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700)),
                  )),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Container(
                      child: Row(
                    children: <Widget>[
                      Container(
                          height: screenHeight * 0.32,
                          width: screenWidth * 0.45,
                          child: Image(
                            image: CachedNetworkImageProvider(widget.poster),
                          )),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                child: Text(
                              widget.date,
                              style: GoogleFonts.varelaRound(
                                  textStyle: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800)),
                            )),
                            Container(
                                child: Text(
                              widget.time,
                              style: GoogleFonts.varelaRound(
                                  textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100)),
                            )),
                            SizedBox(
                              height: screenHeight * 0.06,
                            ),
                            Container(
                                child: Text(
                              "Venue",
                              style: GoogleFonts.varelaRound(
                                  textStyle: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800)),
                            )),
                            Container(child: Text(widget.location)),
                            SizedBox(
                              height: screenHeight * 0.06,
                            ),
                            Container(
                                child: Text(
                              "Link",
                              style: GoogleFonts.varelaRound(
                                  textStyle: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800)),
                            )),
                            Container(child: Text(widget.link)),
                          ],
                        ),
                      ),
                    ],
                  )),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Card(
                    child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          widget.desc,
                          style: GoogleFonts.varelaRound(
                              textStyle: TextStyle(height: 1.5)),
                        )),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Card(
                    child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.speaker),
                            Text(
                              "  Speaker - " + widget.speaker,
                              style: GoogleFonts.varelaRound(
                                  textStyle: TextStyle(fontSize: 20)),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            )));
  }
}
