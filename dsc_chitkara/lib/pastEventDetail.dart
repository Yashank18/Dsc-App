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
    myheading: "KOTLIN EVERYWHERE",
     url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/kotlin_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/kotlin.jpg',

  ),
  Titles(
    
    mydescription: "A talk on “Google Summer of Code (GSoC)” with Maandeep Singh. GSoC is a global program focused on bringing more student developers into open source software development. During this session, Maandeep Singh, who is a part of GSoC 2019, shared his experience with the students, guiding and motivating them to be a part of the upcoming GSoC competitive program. ",
    myheading: "GSOC Workshop",
    url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/gsocM_poster.jpg",
   myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/gsocM.jpg',

  ),
  Titles(
    
    mydescription: "NINJAS! CODING NINJAS along with Developer Student Clubs, Chitkara University, hosted an online coding competition CODE CHAMP, Season 4, on 9th August 2019. More than 200 students participated in this competition. We gladly announce our winners, who won goodies from Coding Ninjas",
    myheading: "CODE CHAMP, S4 ",
     url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/cChamp_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/cChamp.jpg',

  ),
  Titles(
    
    mydescription: "Google I/O Extended 2019, another event organised by Developer Student Clubs, was successfully conducted on 23 August, 2019. It was a morning filled with tech talks featuring an eminent speaker, Mr. Kamal Vaid, Technology lead at Infosys, Chandigarh. Kamal Vaid sir is lead at GDG, Chandigarh and GDE for Google Assistant. The speaker gave the students a look at Google's latest developer products.",
    myheading: "GOOGLE I/O EXTENDED 2019",
     url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/Extended_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/Extended.jpg',

  ),
  Titles(
     
    mydescription: "Chitkara University was transformed into an adrenaline-fuelled zone for 30 hours, as over 250 students from various universities participated in hackathon challenge - Octahacks 2.0, organised by Developer Student Clubs. OctaHacks is the annual flagship event of DSC where students get a unique opportunity to merge their creative ideas with their technical skills to build something exemplary. It's a place where all ideas get acknowledged.",
    myheading: "OCTAHACKS 2.0",
    url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/octahacks2_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/octahacks2.jpg',

  ),
   Titles(
    
    mydescription: "Mr. Saurabh Thakur, Software Developer at smallcase and our DSC lead, addressed the audience regarding the technology use cases in a company. He shared his experience in the industry and shared information regarding various technologies which are being used in industries nowadays.",
    myheading: "TALK ON WEB TECHNOLOGIES",
     url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/Web_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/webtech.jpg',

  ),
  Titles(
   
    mydescription: "Developer Students Club (DSC), Department of Computer Science and Engineering, conducted the “Git and GitHub Workshop” on 22nd January 2020. Students participated in the event with huge zeal and enthusiasm. Over 150+ students turned out and made this a successful event. Hands on training session allows students to make the transition from the “why” behind a task to the “how”. Session proved to be really fruitful for the participants and now they are ready to commit to an Open Source Project.",
    myheading: "GITHUB WORKSHOP",
    url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/github_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/github.jpg',

  ),
  Titles(
    
    mydescription: "Mr. Saurabh Thakur, Software Developer at smallcase and our DSC Lead who completed his GSoC journey with AOSSIE organisation in 2019, shared his GSoC experience, and his views on contacting the mentors, working on issues, being active on the IRC channels. Saurabh Thakur laid emphasis on first understanding the codebase and documentation of the project for working on issues and new features.",
    myheading: "WORKSHOP ON GSOC",
    url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/gsocS_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/gsocS.jpg',

  ),
  
  
];
