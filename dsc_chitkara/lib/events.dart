import 'dart:async';

import 'package:dsc_chitkara/main.dart';
import 'package:dsc_chitkara/pastEventDetail.dart';
import 'package:dsc_chitkara/register.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'Widgets/slide_item.dart';
import 'model/slide.dart';
import 'Widgets/slide_dots.dart';

class EventPage extends StatefulWidget {
  EventPage({Key key}) : super(key: key);

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
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
          title: Text("Events"),
          
        ),
        body: Container(
          color: Color.fromRGBO(39, 39, 47, 1),
          child: 
              
                      ListView(
                        children: <Widget>[
                          Container( height: screenHeight*0.35,
              child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _pageController,
                        onPageChanged: _onPageChanged,
                        itemCount: slideList.length,
                        itemBuilder: (ctx, i) => SlideItem(i),
                      ),),
                            SizedBox(height:20),
                Card(
                         color: Color.fromRGBO(52, 52, 62, 1),
                         elevation: 8.0,
                        margin: EdgeInsets.symmetric(horizontal:10.0,vertical:6.0),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                            leading: Container(
                                 
                                  child: Icon(Icons.event, color: Colors.green,size: 50,),

                                ),
                                title: FlatButton(
                                   onPressed: (){
                                    Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => registerPage()),
                              );
                                  },
                                  padding: EdgeInsets.only(left: 0),
                                child:Text("Event 1 Name",style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.bold)),
                                
                              ),
                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.linear_scale, color: Colors.green),
                                        Text("   Date",style: TextStyle(color:Colors.green),),
                                      ],
                                    ),
                          ),
                       ),
                       Card(
                         color: Color.fromRGBO(52, 52, 62, 1),
                         elevation: 8.0,
                        margin: EdgeInsets.symmetric(horizontal:10.0,vertical:10.0),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                            leading: Container(
                                  
                                     
                                  child: Icon(Icons.event, color: Colors.red,size: 50,),

                                ),
                                title: FlatButton(
                                  onPressed: (){
                                    Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyApp()),
                              );
                                  },
                                  padding: EdgeInsets.only(left: 0),
                                child:Text("Event name",style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.bold)),
                                
                              ),
                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.linear_scale, color: Colors.red),
                                        Text("   Date",style: TextStyle(color:Colors.red),),
                                      ],
                                    ),
                          ),
                       ),
                       Card(
                        color: Color.fromRGBO(52, 52, 62, 1),
                         elevation: 8.0,
                        margin: EdgeInsets.symmetric(horizontal:10.0,vertical:6.0),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                            leading: Container(
                                  
                                  child: Icon(Icons.event, color: Colors.blue.shade700,size: 50,),

                                ),
                                title: FlatButton(
                                  onPressed: (){
                                    Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => registerPage()),
                              );
                                  },
                                  padding: EdgeInsets.only(left: 0),
                                child:Text("Event Name",style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.bold)),
                                
                              ),
                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.linear_scale, color: Colors.blue.shade700),
                                        Text("   Date",style: TextStyle(color:Colors.blue.shade700),),
                                      ],
                                    ),
                          ),
                       ),
                       Card(
                         color: Color.fromRGBO(52, 52, 62, 1),
                         elevation: 8.0,
                        margin: EdgeInsets.symmetric(horizontal:10.0,vertical:6.0),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                            leading: Container(
                                 
                                  child: Icon(Icons.event, color: Colors.green,size: 50,),

                                ),
                                title: FlatButton(
                                  onPressed: (){
                                    Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PastEvent(id: 1,title: "Event Name ii",)),
                              );
                                  },
                                  padding: EdgeInsets.only(left: 0),
                                child:Hero(tag:'mytag',child: Text("Event Name ii",style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.bold))),
                                
                              ),
                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.linear_scale, color: Colors.green),
                                        Text("   Date",style: TextStyle(color:Colors.green),),
                                      ],
                                    ),
                          ),
                       ),
                       Card(
                         color: Color.fromRGBO(52, 52, 62, 1),
                         elevation: 8.0,
                        margin: EdgeInsets.symmetric(horizontal:10.0,vertical:10.0),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                            leading: Container(
                                  
                                     
                                  child: Icon(Icons.event, color: Colors.red,size: 50,),

                                ),
                                title: FlatButton(
                                  onPressed: (){
                                    Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => registerPage()),
                              );
                                  },
                                  padding: EdgeInsets.only(left: 0),
                                child:Text("Event name",style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.bold)),
                                
                              ),
                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.linear_scale, color: Colors.red),
                                        Text("   Date",style: TextStyle(color:Colors.red),),
                                      ],
                                    ),
                          ),
                       ),
                       Card(
                        color: Color.fromRGBO(52, 52, 62, 1),
                         elevation: 8.0,
                        margin: EdgeInsets.symmetric(horizontal:10.0,vertical:6.0),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                            leading: Container(
                                  
                                  child: Icon(Icons.event, color: Colors.blue.shade700,size: 50,),

                                ),
                                title: FlatButton(
                                  onPressed: (){
                                    Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => registerPage()),
                              );
                                  },
                                  padding: EdgeInsets.only(left: 0),
                                child:Text("Event Name",style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.bold)),
                                
                              ),
                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.linear_scale, color: Colors.blue.shade700),
                                        Text("   Date",style: TextStyle(color:Colors.blue.shade700),),
                                      ],
                                    ),
                          ),
                       ),
                        ],
                      )
            
          
                
                /**/
              
          
        ),
      ),
    );
  }
}