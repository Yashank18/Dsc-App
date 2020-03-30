import 'package:dsc_chitkara/aboutUs.dart';
import 'package:dsc_chitkara/events.dart';
import 'package:dsc_chitkara/teampage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: "Developer Student Clubs, Chitkara University",
      home: MyHome(),
      routes: <String, WidgetBuilder> {
    '/screen1': (BuildContext context) => EventPage(),
    '/screen2' : (BuildContext context) => AboutUs(),
    '/screen3' : (BuildContext context) => teampage(),
    
  },
    );
  }
}

class MyHome extends StatefulWidget {
  MyHome({Key key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
   double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color.fromRGBO(52, 52, 62, 1),
        title: FlatButton.icon(
          onPressed: (){},
          icon:Image.asset("images/logo_trans.png",width: screenWidth * 0.1,
              height: screenHeight * 0.042,),
          label: Text("Developer Student Clubs",style:TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Colors.white)),
          ),
          actions: <Widget>[
            FlatButton(onPressed: (){}, child: Icon(Icons.info_outline,color:Colors.green,size:25))
          ],
      ),
      body: Container(
        color: Color.fromRGBO(39, 39, 47, 1),
       child: ListView.builder(
         shrinkWrap: true,
         itemBuilder: (c, i){
           return Card(
                       color: Color.fromRGBO(52, 52, 62, 1),
                       elevation: 8.0,
                      margin: EdgeInsets.symmetric(horizontal:10.0,vertical:6.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                          leading: Container(
                               
                                child:title[i].myicon,// Icon(title[i].myicon, color: title[i].mycolor,size: 50,),

                              ),
                              title: FlatButton(
                                onPressed: (){
                                  Navigator.of(context).pushNamed(title[i].myroute);
                                },
                                padding: EdgeInsets.only(left: 0),
                              child:Text(title[i].myheading,style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.bold)),
                              
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.linear_scale, color: title[i].mycolor),
                                      Text(title[i].mydescription,style: TextStyle(color:title[i].mycolor),),
                                    ],
                                  ),
                        ),
                     );
         },
         itemCount: title.length,
       )
      ),
    );
  }
}


class Titles {
  Color mycolor;
  String myheading;
  String mydescription;
  Icon myicon;
  String myroute;

  Titles(
    {
      this.mycolor,
      this.myheading,
      this.mydescription,
      this.myicon,
      this.myroute
    }
  );
  Titles.fromJson(Map<String, dynamic> json) {
    mycolor = json['mycolor'];
    myheading = json['myheading'];
    mydescription = json['mydescription'];
    myicon = json['myicon'];
    myroute = json['myicon'];
  }
Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mycolor']=this.mycolor;
    data['myheading']=this.myheading;
    data['mydescription']=this.mydescription;
    data['myicon']=this.myicon;
    data['myroute']=this.myroute;
    return data;
  }
}

List<Titles> title=[
  Titles(
    mycolor: Colors.green,
    mydescription: "  April-August 2020",
    myheading: "Upcoming Events",
    myicon: Icon(Icons.event,color: Colors.green,size:50),
    myroute: '/screen1',

  ),
  Titles(
     mycolor: Colors.red,
    mydescription: "  2019-2020",
    myheading: "Past Events",
    myicon: Icon(Icons.event,color: Colors.red,size:50),
    myroute: '/screen1',

  ),
  Titles(
     mycolor: Colors.blue,
    mydescription: "  To learn",
    myheading: "Resources",
     myicon: Icon(Icons.event,color: Colors.blue,size:50),
    myroute: '/screen1',

  ),
  Titles(
     mycolor: Colors.green,
    mydescription: "  2020-2021",
    myheading: "Our Team",
     myicon: Icon(Icons.group_work,color: Colors.green,size:50),
    myroute: '/screen3',

  ),
  Titles(
    mycolor: Colors.red,
    mydescription: "  Our Story",
    myheading: "About Us",
    myicon: Icon(Icons.info_outline,color: Colors.red,size:50),
   myroute: '/screen2',

  ),
];


