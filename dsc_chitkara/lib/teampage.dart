import 'package:dsc_chitkara/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';

class teampage extends StatefulWidget {
  const teampage({Key key}) : super(key: key);

  @override
  _teampageState createState() => _teampageState();
}

class _teampageState extends State<teampage> {
 Widget urlhandles(context) => FittedBox(
   
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
                launch(speakers[0].fbUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.twitter,
                size: 15,
                color:Colors.blue.shade100
              ),
              onPressed: () {
                launch(speakers[0].twitterUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.linkedinIn,
                size: 15,
                color:Colors.blue.shade700
              ),
              onPressed: () {
                launch(speakers[0].linkedinUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.github,
                size: 15,
                color:Colors.white
              ),
              onPressed: () {
                launch(speakers[0].githubUrl);
              },
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
       Navigator.of(context).pop();
      },
          child: Scaffold(
        appBar: new AppBar(
          leading: new FlatButton(
            child: Icon(Icons.arrow_back_ios,color: Colors.white),
            onPressed: (){
               Navigator.of(context).pop();
            },
          ),
          title: new Text('Team'),
           backgroundColor: Color.fromRGBO(52, 52, 62, 1),
        ),
        body: Container(
          color: Color.fromRGBO(39, 39, 47, 1),
          child: ListView.builder(
            
            shrinkWrap: true,
            itemBuilder: (c, i) {
              return Card(
                color: Color.fromRGBO(52, 52, 62, 1),
                elevation: 0.0,
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
                        speakers[i].speakerImage,
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
                                    speakers[i].speakerName,
                                    style: TextStyle(color:Color.fromRGBO(55, 239, 187, 1),fontSize:25.0),
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
                                speakers[i].speakerDesc,
                                style: TextStyle(color:Colors.white,fontSize:17.0),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                speakers[i].speakerWork,
                                style:TextStyle(color:Colors.red,fontSize:12.0),
                              ),
                              urlhandles(context),
                            ],
                          ),
                        )
                      ],
                    )),
              );
            },
            itemCount: speakers.length,
          ),
        ),
        
      ),
    );
    
    
    
  }
}




class Speaker {
  String speakerName;
  String speakerDesc;
  String speakerImage;
  String speakerInfo;
  String speakerId;
  String fbUrl;
  String twitterUrl;
  String linkedinUrl;
  String githubUrl;
  String speakerWork;
  String sessionId;

  Speaker(
      {this.speakerName,
      this.speakerDesc,
      this.speakerImage,
      this.speakerInfo,
      this.speakerId,
      this.fbUrl,
      this.twitterUrl,
      this.linkedinUrl,
      this.githubUrl,
      this.speakerWork,
      this.sessionId});

  Speaker.fromJson(Map<String, dynamic> json) {
    speakerName = json['speaker_name'];
    speakerDesc = json['speaker_desc'];
    speakerImage = json['speaker_image'];
    speakerInfo = json['speaker_info'];
    speakerId = json['speaker_id'];
    fbUrl = json['fb_url'];
    twitterUrl = json['twitter_url'];
    linkedinUrl = json['linkedin_url'];
    githubUrl = json['github_url'];
    speakerWork = json['speaker_session'];
    sessionId = json['session_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speaker_name'] = this.speakerName;
    data['speaker_desc'] = this.speakerDesc;
    data['speaker_image'] = this.speakerImage;
    data['speaker_info'] = this.speakerInfo;
    data['speaker_id'] = this.speakerId;
    data['fb_url'] = this.fbUrl;
    data['twitter_url'] = this.twitterUrl;
    data['linkedin_url'] = this.linkedinUrl;
    data['github_url'] = this.githubUrl;
    data['speaker_session'] = this.speakerWork;
    data['session_id'] = this.sessionId;
    return data;
  }
}
List<Speaker> speakers = [
  Speaker(
    speakerImage:
        "https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/sourabh.jpg",
        speakerName: "Saurabh Thakur",
    speakerDesc: "DSC Lead",
    speakerWork: "SDE at SmallCase",
    fbUrl: "https://facebook.com/thakursaurabh1998",
    githubUrl: "https://github.com/thakursaurabh1998",
    linkedinUrl: "https://linkedin.com/in/thakursaurabh1998",
    twitterUrl: "https://twitter.com/thakursaurabh1998",
  ),
  Speaker(
    speakerImage:
       "https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/yashank.jpg",
       speakerName: "Yashank",
    speakerDesc: "DSC Member",
    speakerWork: "Flutter Developer",
    fbUrl: "https://facebook.com/",
    githubUrl: "https://github.com/Yashank18",
    linkedinUrl: "https://linkedin.com/in/",
    twitterUrl: "https://twitter.com/yashank17",
  ),
  Speaker(
    speakerImage:
        "https://raw.githubusercontent.com/Yashank18/Dsc-App/master/Images/muskan.jpg",
       speakerName: "Muskan Goyal",
    speakerDesc: "DSC Member",
    speakerWork: "Frontend Developer",
    fbUrl: "https://facebook.com/",
    githubUrl: "https://github.com/goyalmuskan",
    linkedinUrl: "https://linkedin.com/in/goyalmuskan",
    twitterUrl: "https://twitter.com/",
  ),
  Speaker(
    speakerImage:
        "images/saransh.jpg",
       speakerName: "Saransh",
    speakerDesc: "DSC Member",
    speakerWork: "Frontend Developer",
    fbUrl: "https://facebook.com/",
    githubUrl: "https://github.com/saranshdawra",
    linkedinUrl: "https://linkedin.com/in/SaranshDawra",
    twitterUrl: "https://twitter.com/",
  ),
  Speaker(
    speakerImage:
       "images/satvik.jpg",
       speakerName: "Satvik",
    speakerDesc: "DSC Member",
    speakerWork: "Frontend Developer",
    fbUrl: "https://facebook.com/",
    githubUrl: "https://github.com/satvikchachra",
    linkedinUrl: "https://linkedin.com/in/satvikchachra",
    twitterUrl: "https://twitter.com/yashank17",
  ),
  Speaker(
    speakerImage:
        "images/ishaan.jpg",
       speakerName: "Ishaan",
    speakerDesc: "DSC Member",
    speakerWork: "Public Relations",
    fbUrl: "https://www.facebook.com/",
    githubUrl: "https://github.com/ishaan2908",
    linkedinUrl: "https://linkedin.com/in/ishaan2908",
    twitterUrl: "https://twitter.com/",
  ),
  Speaker(
    speakerImage:
      "images/sahil.jpg",
       speakerName: "Sahildeep",
    speakerDesc: "DSC Member",
    speakerWork: "Frontend Developer",
    fbUrl: "https://facebook.com/sForSaahil",
    githubUrl: "https://github.com/sahilcodes",
    linkedinUrl: "https://linkedin.com/in/sahilcodes",
    twitterUrl: "https://twitter.com/oyesaahil",
  ),
  Speaker(
    speakerImage:
      "images/ishan.jpg",
       speakerName: "Ishan Sharma",
    speakerDesc: "DSC Member",
    speakerWork: "Frontend Developer",
    fbUrl: "https://facebook.com/",
    githubUrl: "https://github.com/ishandeveloper",
    linkedinUrl: "https://linkedin.com/in/ishandeveloper",
    twitterUrl: "https://twitter.com/",
  ),
  Speaker(
    speakerImage:
       "images/kushal.jpg",
       speakerName: "Kushal Bhanot",
    speakerDesc: "DSC Member",
    speakerWork: "Frontend Developer",
    fbUrl: "https://facebook.com/kushal.bhanot.98",
    githubUrl: "https://github.com/KushalBhanot",
    linkedinUrl: "https://linkedin.com/in/kushal-bhanot-5495aa88",
    twitterUrl: "https://twitter.com/BhanotKushal",
  ),
  Speaker(
    speakerImage:
        "images/anmol.jpg",
       speakerName: "Anmol",
    speakerDesc: "DSC Member",
    speakerWork: "Flutter Developer",
    fbUrl: "https://www.facebook.com/anmol.dx.5",
    githubUrl: "https://github.com/Yashank18",
    linkedinUrl: "https://linkedin.com/in/",
    twitterUrl: "https://twitter.com/yashank17",
  ),
  Speaker(
    speakerImage:
        "images/mridul.jpg",
       speakerName: "Mridul Bhatia",
    speakerDesc: "DSC Member",
    speakerWork: "Video Editor",
    fbUrl: "https://www.facebook.com/mridul.bhatia.54",
    githubUrl: "https://github.com/mridulbhatia0007",
    linkedinUrl: "https://linkedin.com/in/",
    twitterUrl: "https://twitter.com/",
  ),
  Speaker(
    speakerImage:
        "images/simran.jpg",
       speakerName: "Simran",
    speakerDesc: "DSC Member",
    speakerWork: "Flutter Developer",
    fbUrl: "https://www.facebook.com/",
    githubUrl: "https://github.com/simransrivastava01",
    linkedinUrl: "https://linkedin.com/in/simran-shrivastava-1b7b15193",
    twitterUrl: "https://twitter.com/SimranS49844946",
  ),
  Speaker(
    speakerImage:
        "images/adi.jpg",
       speakerName: "Aaditya",
    speakerDesc: "DSC Co-ordinator",
    speakerWork: "Graphic Designer",
    fbUrl: "https://www.facebook.com/",
    githubUrl: "https://github.com/adityasingh7715",
    linkedinUrl: "https://linkedin.com/in/aditya-singh-886866193",
    twitterUrl: "https://twitter.com/adityasingh7716",
  ),
  Speaker(
    speakerImage:
        "images/tanishq.jpg",
       speakerName: "Tanishq",
    speakerDesc: "DSC Co-ordinator",
    speakerWork: "Web ",
    fbUrl: "https://www.facebook.com/tanishq.singla.102",
    githubUrl: "https://github.com/TanishqSingla",
    linkedinUrl: "https://linkedin.com/in/tanishq-singla-520431192",
    twitterUrl: "https://twitter.com/mainTanishq",
  ),
  Speaker(
    speakerImage:
        "images/sahu.jpg",
       speakerName: "Saurabh Sahu",
    speakerDesc: "DSC Co-ordinator",
    speakerWork: "Web",
    fbUrl: "https://www.facebook.com/",
    githubUrl: "https://github.com/ssbeast",
    linkedinUrl: "https://linkedin.com/in/saurabh-sahu-a45634191",
    twitterUrl: "https://twitter.com/Saurabh10725385",
  ),
  
];
