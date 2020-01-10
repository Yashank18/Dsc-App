import 'package:flutter/material.dart';

import 'home.dart';

class pasteventpage extends StatefulWidget {
  pasteventpage({Key key}) : super(key: key);

  @override
  _pasteventpageState createState() => _pasteventpageState();
}

class _pasteventpageState extends State<pasteventpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: new Text("Past Events"),
        
        backgroundColor: Color.fromRGBO(195, 230, 228, 1),
        
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (c,i){
            return Card(
                elevation: 0.0,
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: <Widget>[
                Row(
                  children: <Widget>[
                  
                      Container(
                          padding: const EdgeInsets.all(20.0),
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width - 60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                image[i].Date,
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
                              Padding(padding: EdgeInsets.only(top: 30.0),),
                              Container(
                                alignment: Alignment.center,
                                child: Text(image[i].Name,style: TextStyle(fontSize: 40.0),),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                          ),
                      ),
                  ],
                ),
                
                 ],
                ),
            ),
            
            );
            
        },
        itemCount: image.length,
      )
          
        
    );
  }
}

class Speaker {
  String Name;
  String Date;
  

  Speaker(
      {this.Name,
      this.Date,
     });

  Speaker.fromJson(Map<String, dynamic> json) {
    Name = json['speaker_name'];
    Date = json['date_event'];
   
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['speaker_name'] = this.Name;
    data['date_event'] = this.Date;
    
    return data;
  }
}
List<Speaker> image =[
  Speaker(
    Name: "Octahacks 2.0",
    Date: "28-29 Aug",
  ),
  Speaker(
    Name: "Event 2",
    Date: "29-30 Aug",
  ),
  Speaker(
    Name: "Event 3",
    Date: "1-9 Aug",
  ),
  Speaker(
    Name: "Event",
    Date: "18-29 Aug",
  ),
];
