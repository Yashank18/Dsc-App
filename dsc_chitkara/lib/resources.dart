import 'package:dsc_chitkara/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class resources extends StatefulWidget {
  resources({Key key}) : super(key: key);

  @override
  _resourcesState createState() => _resourcesState();
}

class _resourcesState extends State<resources> {
   List data;

  Future<String> getJsonData() async{
    var response = await http.get(
      Uri.encodeFull("https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Data/resources.json"),
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
    this.getJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
          onWillPop: (){
       Navigator.of(context).pop();
       
      },
          child: Scaffold(
            
        appBar: new AppBar(
          backgroundColor: Colors.white,
          leading: FlatButton(child: Icon(Icons.arrow_back_ios,color: Colors.black,),onPressed: (){
                                    Navigator.of(context).pop();
                                    
                              
                                  },),
          title: Text("Resources",style:GoogleFonts.varelaRound(textStyle:TextStyle(color:Colors.black))),
          
        ),
        body: Container(
          color: Colors.white,
          child:ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: data==null?0:data.length,
           itemBuilder: (c, i){
                    return Card(
              color:Colors.white,
              margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 8.0),
              elevation: 4.0,
              child: InkWell(
                  splashColor: Colors.grey.withAlpha(90),
              onTap: () {
                launch(data[i]['url']);
              },
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
               mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image(
                      image: CachedNetworkImageProvider(
                        data[i]['myimage'],
                      ),
                      height: MediaQuery.of(context).size.height / 5,
                      fit: BoxFit.cover,
                  ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, top: 16.0, bottom: 4.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      data[i]['myheading'],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                  child: Text(
                    data[i]['mydescription'],
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                        color: Colors.black54),
                  ),
                ),
                ]
              )
              ),
            );
           },
           
          )
          )

      ),
    );
  }
}

