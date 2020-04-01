import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


class PastEvent extends StatefulWidget {
  final String title;
  final int id;
  PastEvent({Key key ,@required this.title, @required this.id}) : super(key: key);

  @override
  _PastEventState createState() => _PastEventState();
}

class _PastEventState extends State<PastEvent> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
          leading: new FlatButton(
            child: Icon(Icons.arrow_back_ios,color: Colors.white),
            onPressed: (){
               Navigator.of(context).pop();
            },
          ),
          title: new Text(widget.title),
           backgroundColor: Color.fromRGBO(52, 52, 62, 1),
        ),
        body: Container(
          height: screenHeight,
          width: screenWidth,
          color: Color.fromRGBO(39, 39, 47, 1),
          child: ListView(
            children: <Widget>[
               Card(
                                child: Image(
                        image: CachedNetworkImageProvider(
                          title[widget.id].myimage,
                        ),
                        height: MediaQuery.of(context).size.height / 3.5,
                        fit: BoxFit.cover,
                    ),
                    
               ),
               SizedBox(height:screenHeight*0.03),
               Center(child:Text(widget.title,style: TextStyle(fontSize: 40,color:Colors.white),)),
               SizedBox(height:screenHeight*0.03),
               Padding(padding:EdgeInsets.symmetric(horizontal:12),child: Center(child:Text(title[widget.id].mydescription,style: TextStyle(fontSize: 20,color:Colors.white),textAlign: TextAlign.justify,)))
            ],
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
    
    mydescription: "KOTLIN EVERYWHERE on Kotlin - Google’s official language for android development, on 19th July, 2019. Mr. Aditya Aggarwal, Software Developer at OYO and former Chitkara DSC lead, addressed the audience, familiarising the students with basic and intermediate levels of Kotlin. ",
    myheading: "Google Codelabs",
     url:"https://codelabs.developers.google.com",
    myimage: 'https://codelabs.developers.google.com/images/og-image.png',

  ),
  Titles(
    
    mydescription: "“KOTLIN EVERYWHERE” on Kotlin - Google’s official language for android development, on 19th July, 2019. Mr. Aditya Aggarwal, Software Developer at OYO and former Chitkara DSC lead, addressed the audience, familiarising the students with basic and intermediate levels of Kotlin. ",
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
