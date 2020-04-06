import 'package:dsc_chitkara/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class teampage extends StatefulWidget {
  const teampage({Key key}) : super(key: key);

  @override
  _teampageState createState() => _teampageState();
}

class _teampageState extends State<teampage> {



    List data;

  // Function to get the JSON data
  Future<String> getJSONData() async {
    var response = await http.get(
      Uri.encodeFull("https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Data/team.json"),
    );

    setState(() {
      // Get the JSON data
      print("hey");
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

    return WillPopScope(
      onWillPop: (){
       Navigator.of(context).pop();
      },
          child: Scaffold(
        appBar: new AppBar(
          leading: new FlatButton(
            child: Icon(Icons.arrow_back_ios,color: Colors.black),
            onPressed: (){
               Navigator.of(context).pop();
            },
          ),
          title: new Text('Team',style:GoogleFonts.varelaRound(textStyle:TextStyle(color:Colors.black))),
           backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.white,
          child: ListView.builder(
            
            shrinkWrap: true,
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (c, i) {
              return Card(
                color: Colors.white,
                elevation: 2.0,
                child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ConstrainedBox(
                          constraints: BoxConstraints.expand(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.3,
                          ),
                          child: Image(
                      image: CachedNetworkImageProvider(
                        data[i]['speakerImage'],
                      ),),
                          
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    data[i].speakerName,
                                    style: TextStyle(color:Colors.black,fontSize:25.0),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  AnimatedContainer(
                                    duration: Duration(seconds: 1),
                                    width: MediaQuery.of(context).size.width * 0.3,
                                    height: 5,
                                    color: Color.fromRGBO(251, 219, 134, 1),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                data[i]['speakerDesc'],
                                style: TextStyle(color:Colors.grey,fontSize:17.0),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                data[i]['speakerWork'],
                                style:TextStyle(color:Colors.red,fontSize:12.0),
                              ),
                              FittedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(
                                        FontAwesomeIcons.facebookF,
                                        size: 15,
                                        color:Colors.indigo
                                      ),
                                      onPressed: () {
                                        launch(data[i]['fbUrl']);
                                      },
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        FontAwesomeIcons.twitter,
                                        size: 15,
                                        color:Colors.blue.shade100
                                      ),
                                      onPressed: () {
                                        launch(data[i]['twitterUrl']);
                                      },
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        FontAwesomeIcons.linkedinIn,
                                        size: 15,
                                        color:Colors.blue.shade700
                                      ),
                                      onPressed: () {
                                        launch(data[i]['linkedinUrl']);
                                      },
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        FontAwesomeIcons.github,
                                        size: 15,
                                        color:Colors.black,
                                      ),
                                      onPressed: () {
                                        launch(data[i]['githubUrl']);
                                      },
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              );
            },
            
          ),
        ),
        
      ),
    );
    
    
    
  }
}



