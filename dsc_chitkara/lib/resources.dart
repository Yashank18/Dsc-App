import 'package:dsc_chitkara/main.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

class resources extends StatefulWidget {
  resources({Key key}) : super(key: key);

  @override
  _resourcesState createState() => _resourcesState();
}

class _resourcesState extends State<resources> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
          onWillPop: (){
       Navigator.of(context).pop();
       
      },
          child: Scaffold(
            
        appBar: new AppBar(
          backgroundColor: Color.fromRGBO(52, 52, 62, 1),
          leading: FlatButton(child: Icon(Icons.arrow_back_ios,color: Colors.white,),onPressed: (){
                                    Navigator.of(context).pop();
                                    
                              
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
                launch(title[i].url);
              },
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
               mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image(
                      image: CachedNetworkImageProvider(
                        title[i].myimage,
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

      ),
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
    
    mydescription: "Google Developers Codelabs provide a guided, tutorial, hands-on coding experience. Most codelabs will step you through the process of building a small application, or adding a new feature to an existing application. ",
    myheading: "Google Codelabs",
     url:"https://codelabs.developers.google.com",
    myimage: 'https://codelabs.developers.google.com/images/og-image.png',

  ),
  Titles(
    
    mydescription: "Firebase is Google's mobile platform that helps you quickly develop high-quality apps and grow your business.",
    myheading: "Firebase",
    url:"https://firebase.google.com/",
   myimage: 'https://www.8bitmen.com/wp-content/uploads/2018/11/Firebase.png',

  ),
  Titles(
    
    mydescription: "Flutter is Google’s UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.",
    myheading: "Flutter",
     url:"http://flutter.io/",
    myimage: 'https://blog.codemagic.io/uploads/CM_Android-dev-Flutter.png',

  ),
  Titles(
    
    mydescription: "Google Cloud Platform, offered by Google, is a suite of cloud computing services that runs on the same infrastructure that Google uses internally for its end-user products, such as Google Search, Gmail and YouTube. ",
    myheading: "Google Cloud Platform",
     url:"http://cloud.google.com",
    myimage: 'https://i.pcmag.com/imagery/reviews/02yVL9f8Jw1atwoG6sgFZDH-7.fit_scale.size_1028x578.v_1569482492.jpg',

  ),
  Titles(
     
    mydescription: "Since 2014, more than 40,000 freeCodeCamp.org graduates have gotten jobs at tech companies including: Apple, Google, Amazon, Spotify",
    myheading: "FreeCodeCamp",
    url:"http://freecodecamp.org",
    myimage: 'https://camo.githubusercontent.com/60c67cf9ac2db30d478d21755289c423e1f985c6/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f66726565636f646563616d702f776964652d736f6369616c2d62616e6e65722e706e67',

  ),
   Titles(
    
    mydescription: "Google Assistant extends to help you across devices, like Google Home, your phone, and more. You can access it with long press home on Android, Ok Google, or a squeeze on Pixel phones.",
    myheading: "Google Assistant",
     url:"https://assistant.google.com/",
    myimage: 'https://i.ytimg.com/vi/K_LESuPJVpU/maxresdefault.jpg',

  ),
  Titles(
   
    mydescription: "Udacity is the world’s fastest, most efficient way to master the skills tech companies want. 100% online, part-time & self-paced.",
    myheading: "Udacity",
    url:"https://www.udacity.com/",
    myimage: 'https://www.bertelsmann.com/media/news-und-media/logos/logo-udacity-1600x900px_article_landscape_gt_1200_grid.png',

  ),
  Titles(
    
    mydescription: "THE WORLD'S LARGEST WEB DEVELOPER SITE",
    myheading: "W3 Schools",
    url:"https://www.w3schools.com/",
    myimage: 'https://external-preview.redd.it/_p2dL2RabR7Jo16efFao3TGJNJgYcI7Se4SDNKWbEq4.png?auto=webp&s=e9d5e7e74268a829636144351db03ae3f9fefe25',

  ),
  
  
];