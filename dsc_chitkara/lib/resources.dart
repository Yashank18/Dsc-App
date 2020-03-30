import 'package:dsc_chitkara/main.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class resources extends StatefulWidget {
  resources({Key key}) : super(key: key);

  @override
  _resourcesState createState() => _resourcesState();
}

class _resourcesState extends State<resources> {
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
        title: Text("Resources"),
        
      ),
      body: Container(
        color: Color.fromRGBO(39, 39, 47, 1),
        child:ListView.builder(
          shrinkWrap: true,
         itemBuilder: (c, i){
                  return Card(
            color:Colors.white,
            margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 8.0),
            elevation: 4.0,
            child: InkWell(
                splashColor: Colors.grey.withAlpha(90),
            onTap: () {
              launch("https://pub.dev/packages/url_launcher#-readme-tab-");
            },
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
             mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                title[i].myimage,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 16.0, bottom: 4.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title[i].myheading,
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
                  title[i].mydescription,
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
         itemCount: title.length,
        )
        )

    );
  }
}

class Titles {
 
  String myheading;
  String mydescription;
  String url;
  String myimage;

  Titles(
    {
     
      this.myheading,
      this.mydescription,
      this.url,
      this.myimage
    }
  );
  Titles.fromJson(Map<String, dynamic> json) {
    
    myheading = json['myheading'];
    mydescription = json['mydescription'];
    url=json['url'];
    myimage = json['myicon'];
  }
Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
   
    data['myheading']=this.myheading;
    data['mydescription']=this.mydescription;
    data['url']=this.url;
    data['myimage']=this.myimage;
    return data;
  }
}

List<Titles> title=[
  Titles(
   
    mydescription: "  April-August 2020",
    myheading: "Upcoming Events",
    url:"",
    myimage: 'images/sahu.jpg',

  ),
  Titles(
    
    mydescription: "  2019-2020",
    myheading: "Past Events",
    
    myimage: 'images/satvik.jpg',

  ),
  Titles(
     
    mydescription: "  To learn",
    myheading: "Resources",
    
    myimage: 'images/satvik.jpg',

  ),
  Titles(
    
    mydescription: "  2020-2021",
    myheading: "Our Team",
     
    myimage: 'images/satvik.jpg',

  ),
  Titles(
    
    mydescription: "  Our Story",
    myheading: "About Us",
    
   myimage: 'images/saransh.jpg',

  ),
];