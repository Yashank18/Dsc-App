import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';


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
                Container(child:Text(title[widget.id].myheading,style: GoogleFonts.varelaRound(textStyle:TextStyle(fontSize: 25,fontWeight: FontWeight.w700)),)),
                SizedBox(height: screenHeight*0.03,),
                Container(
                  child:Row(
                    children: <Widget>[
                      
                      Container(
                        height: screenHeight*0.32,
                        width: screenWidth*0.45,
                        child: Image(image:CachedNetworkImageProvider(title[widget.id].url),)
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                             Container(child:Text(title[widget.id].myDate,style: GoogleFonts.varelaRound(textStyle:TextStyle(fontSize: 13,fontWeight: FontWeight.w800)),)),
                             Container(child:Text(title[widget.id].myTime,style: GoogleFonts.varelaRound(textStyle:TextStyle(fontSize: 12,fontWeight: FontWeight.w100)),)),
                             SizedBox(height: screenHeight*0.06,),
                             Container(child:Text("Venue",style: GoogleFonts.varelaRound(textStyle:TextStyle(fontSize: 13,fontWeight: FontWeight.w800)),)),
                             Container(child:Text(title[widget.id].myLocation)),
                             SizedBox(height: screenHeight*0.06,),
                             Container(child:Text("Link",style: GoogleFonts.varelaRound(textStyle:TextStyle(fontSize: 13,fontWeight: FontWeight.w800)),)),
                             Container(child:Text(title[widget.id].myLink)),
                            ],
                          ),
                        ),
                        ],
                    
                  )
                ),
                SizedBox(height: screenHeight*0.05,),
                          Card(child: Padding(padding:EdgeInsets.all(20),child: Text(title[widget.id].mydescription,style: GoogleFonts.varelaRound(textStyle:TextStyle(height: 1.5)),)),)
              ],
            ),
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
    String myLocation;
  String myDate;
  String myTime;
  String myLink;

  Titles(
    {
     
      this.myheading,
      this.mydescription,
      this.url,
      this.myimage,
      this.myDate,
      this.myLink,
      this.myLocation,
      this.myTime,

    }
  );
  Titles.fromJson(Map<String, dynamic> json) {
    
    myheading = json['myheading'];
    mydescription = json['mydescription'];
    url=json['url'];
    myimage = json['myicon'];
    myLink= json['myLink'];
    myDate = json['myDate'];
    myTime=json['myTime'];
    myLocation = json['myLocation'];
  }
Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
   
    data['myheading']=this.myheading;
    data['mydescription']=this.mydescription;
    data['url']=this.url;
    data['myimage']=this.myimage;
    data['myLink']=this.myLink;
    data['myDate']=this.myDate;
    data['myTime']=this.myTime;
    data['myLocation']=this.myLocation;
    return data;
  }
}

List<Titles> title=[
  Titles(
    
    mydescription: "KOTLIN EVERYWHERE on Kotlin - Google’s official language for android development, on 19th July, 2019. Mr. Aditya Aggarwal, Software Developer at OYO and former Chitkara DSC lead, addressed the audience, familiarising the students with basic and intermediate levels of Kotlin. ",
    myheading: "KOTLIN EVERYWHERE",
     url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/kotlin_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/kotlin.jpg',
    myLink: 'Registration Closed',
    myLocation: 'Pierre Hall',
    myDate: 'Friday, July 19 2019',
    myTime: '9:30 am onwards'


  ),
  Titles(
    
    mydescription: "A talk on “Google Summer of Code (GSoC)” with Maandeep Singh. GSoC is a global program focused on bringing more student developers into open source software development. During this session, Maandeep Singh, who is a part of GSoC 2019, shared his experience with the students, guiding and motivating them to be a part of the upcoming GSoC competitive program. ",
    myheading: "GSOC Workshop",
    url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/gsocM_poster.jpg",
   myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/gsocM.jpg',
   myLink: 'Registration Closed',
    myLocation: 'Faraday Hall',
    myDate: 'Friday, July 26 2019',
    myTime: '9:30 am onwards'

  ),
  Titles(
    
    mydescription: "NINJAS! CODING NINJAS along with Developer Student Clubs, Chitkara University, hosted an online coding competition CODE CHAMP, Season 4, on 9th August 2019. More than 200 students participated in this competition. We gladly announce our winners, who won goodies from Coding Ninjas",
    myheading: "CODE CHAMP, S4 ",
     url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/cChamp_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/cChamp.jpg',
    myLink: 'Registration Closed',
    myLocation: 'Online',
    myDate: 'Friday, August 9 2019',
    myTime: '9:30 am onwards'

  ),
  Titles(
    
    mydescription: "Google I/O Extended 2019, another event organised by Developer Student Clubs, was successfully conducted on 23 August, 2019. It was a morning filled with tech talks featuring an eminent speaker, Mr. Kamal Vaid, Technology lead at Infosys, Chandigarh. Kamal Vaid sir is lead at GDG, Chandigarh and GDE for Google Assistant. The speaker gave the students a look at Google's latest developer products.",
    myheading: "GOOGLE I/O EXTENDED 2019",
     url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/Extended_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/Extended.jpg',
    myLink: 'Registration Closed',
    myLocation: 'Plato Hall',
    myDate: 'Thursday, August 23 2019',
    myTime: '9:30 am onwards'

  ),
  Titles(
     
    mydescription: "Chitkara University was transformed into an adrenaline-fuelled zone for 30 hours, as over 250 students from various universities participated in hackathon challenge - Octahacks 2.0, organised by Developer Student Clubs. OctaHacks is the annual flagship event of DSC where students get a unique opportunity to merge their creative ideas with their technical skills to build something exemplary. It's a place where all ideas get acknowledged.",
    myheading: "OCTAHACKS 2.0",
    url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/octahacks2_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/octahacks2.jpg',
    myLink: 'Registration Closed',
    myLocation: 'Various Halls',
    myDate: 'Fri-Sat, September 20-21 2019',
    myTime: '36 Hours'

  ),
   Titles(
    
    mydescription: "Mr. Saurabh Thakur, Software Developer at smallcase and our DSC lead, addressed the audience regarding the technology use cases in a company. He shared his experience in the industry and shared information regarding various technologies which are being used in industries nowadays.",
    myheading: "TALK ON WEB TECHNOLOGIES",
     url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/Web_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/webtech.jpg',
    myLink: 'Registration Closed',
    myLocation: 'Pulitzer Hall',
    myDate: 'Tuesday, November 5 2019',
    myTime: '9:30 am onwards'

  ),
  Titles(
   
    mydescription: "Developer Students Club (DSC), Department of Computer Science and Engineering, conducted the “Git and GitHub Workshop” on 22nd January 2020. Students participated in the event with huge zeal and enthusiasm. Over 150+ students turned out and made this a successful event. Hands on training session allows students to make the transition from the “why” behind a task to the “how”. Session proved to be really fruitful for the participants and now they are ready to commit to an Open Source Project.",
    myheading: "GITHUB WORKSHOP",
    url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/github_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/github.jpg',
    myLink: 'Registration Closed',
    myLocation: 'Mooc Hall',
    myDate: 'Wednesday, January 2020',
    myTime: '9:30 am onwards'

  ),
  Titles(
    
    mydescription: "Mr. Saurabh Thakur, Software Developer at smallcase and our DSC Lead who completed his GSoC journey with AOSSIE organisation in 2019, shared his GSoC experience, and his views on contacting the mentors, working on issues, being active on the IRC channels. Saurabh Thakur laid emphasis on first understanding the codebase and documentation of the project for working on issues and new features.",
    myheading: "WORKSHOP ON GSOC",
    url:"https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/gsocS_poster.jpg",
    myimage: 'https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/gsocS.jpg',
    myLink: 'Registration Closed',
    myLocation: 'Mooc Hall',
    myDate: 'Thursday, February 5 2020',
    myTime: '9:30 am onwards'

  ),
  
  
];
