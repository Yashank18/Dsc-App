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
      if (_currentPage < 7) {
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
                                  builder: (context) => PastEvent(id: 7,title:"WORKSHOP ON GSOC" ,)),
                              );
                                  },
                                  padding: EdgeInsets.only(left: 0),
                                child:Text("WORKSHOP ON GSOC",style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.bold)),
                                
                              ),
                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.linear_scale, color: Colors.green),
                                        Text("7TH FEBRUARY 2020",style: TextStyle(color:Colors.green),),
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
                                  builder: (context) => PastEvent(id: 6,title:"GITHUB WORKSHOP" ,)),
                              );
                                  },
                                  padding: EdgeInsets.only(left: 0),
                                child:Text("GITHUB WORKSHOP",style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.bold)),
                                
                              ),
                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.linear_scale, color: Colors.red),
                                        Text("22ND JANUARY 2020",style: TextStyle(color:Colors.red),),
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
                                  builder: (context) => PastEvent(id: 5,title:"TALK ON WEB TECHNOLOGIES" ,)),
                              );
                                  },
                                  padding: EdgeInsets.only(left: 0),
                                child:Text("TALK ON WEB ",style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.bold)),
                                
                              ),
                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.linear_scale, color: Colors.blue.shade700),
                                        Text("5th NOVEMBER 2019",style: TextStyle(color:Colors.blue.shade700),),
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
                                  builder: (context) => PastEvent(id: 4,title:"OCTAHACKS 2.0" ),),
                              );
                                  },
                                  padding: EdgeInsets.only(left: 0),
                                child:Hero(tag:'mytag',child: Text("OCTAHACKS 2.0",style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.bold))),
                                
                              ),
                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.linear_scale, color: Colors.green),
                                        Text("20 & 21 September 2019",style: TextStyle(color:Colors.green),),
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
                                  builder: (context) => PastEvent(id: 3,title:"GOOGLE I/O EXTENDED 2019" ),),
                              );
                                  },
                                  padding: EdgeInsets.only(left: 0),
                                child:Text("I/O EXTENDED 2019",style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.bold)),
                                
                              ),
                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.linear_scale, color: Colors.red),
                                        Text("23RD AUGUST 2019",style: TextStyle(color:Colors.red),),
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
                                  builder: (context) => PastEvent(id: 2,title:"CODE CHAMP, S4" ),),
                              );
                                  },
                                  padding: EdgeInsets.only(left: 0),
                                child:Text("CODE CHAMP, S4",style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.bold)),
                                
                              ),
                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.linear_scale, color: Colors.blue.shade700),
                                        Text("9TH AUGUST 2019",style: TextStyle(color:Colors.blue.shade700),),
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
                                  builder: (context) => PastEvent(id: 1,title:"GSoC By Maandeep" ),),
                              );
                                  },
                                  padding: EdgeInsets.only(left: 0),
                                child:Text("GSoC By Maandeep",style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.bold)),
                                
                              ),
                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.linear_scale, color: Colors.green),
                                        Text("26TH JULY 2019",style: TextStyle(color:Colors.green),),
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
                                  builder: (context) => PastEvent(id: 0,title:"KOTLIN EVERYWHERE" ),),
                              );
                                  },
                                  padding: EdgeInsets.only(left: 0),
                                child:Text("KOTLIN EVERYWHERE",style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontWeight: FontWeight.bold)),
                                
                              ),
                              subtitle: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.linear_scale, color: Colors.red),
                                        Text("19TH JULY 2019",style: TextStyle(color:Colors.red),),
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