import 'package:dsc_chitkara/Authentication/AuthPage.dart';
import 'package:dsc_chitkara/home.dart';
import 'package:dsc_chitkara/profile.dart';
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
              ),
              onPressed: () {
                launch(speakers[0].fbUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.twitter,
                size: 15,
              ),
              onPressed: () {
                launch(speakers[0].twitterUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.linkedinIn,
                size: 15,
              ),
              onPressed: () {
                launch(speakers[0].linkedinUrl);
              },
            ),
            IconButton(
              icon: Icon(
                FontAwesomeIcons.github,
                size: 15,
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
       Navigator.of(context).maybePop('/home');
      },
          child: Scaffold(
        appBar: new AppBar(
          leading: new FlatButton(
            child: Icon(Icons.arrow_back_ios,),
            onPressed: (){
               Navigator.push(
                context,
                 MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          title: new Text('Team'),
          backgroundColor: Color.fromRGBO(195, 230, 228, 1),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (c, i) {
            return Card(
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
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: speakers[i].speakerImage,
                        ),
                        
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
                                  style: Theme.of(context).textTheme.title,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                AnimatedContainer(
                                  duration: Duration(seconds: 1),
                                  width: MediaQuery.of(context).size.width * 0.2,
                                  height: 5,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              speakers[i].speakerDesc,
                              style: Theme.of(context).textTheme.subtitle,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              speakers[i].speakerWork,
                              style: Theme.of(context).textTheme.caption,
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
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
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
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
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
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
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
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
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
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
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
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
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
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
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
        "https://avatars1.githubusercontent.com/u/12619420?s=400&u=eac38b075e4e4463edfb0f0a8972825cf7803d4c&v=4",
    speakerName: "Yashank",
    speakerDesc: "DSC Member",
    speakerWork: "Flutter Developer",
    fbUrl: "https://facebook.com/",
    githubUrl: "https://github.com/Yashank18",
    linkedinUrl: "https://linkedin.com/in/",
    twitterUrl: "https://twitter.com/yashank17",
  ),
];
