import 'package:dsc_chitkara/Authentication/AuthPage.dart';
import 'package:dsc_chitkara/Authentication/login.dart';
import 'package:flutter/material.dart';
import 'dart:ui';


var _formKey2 =GlobalKey<FormState>();
TextEditingController namecontroller = TextEditingController();
TextEditingController batchcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();
TextEditingController cpasswordcontroller = TextEditingController();
TextEditingController emailcontroller = TextEditingController();
class SignupPage extends StatelessWidget {
 const SignupPage({Key key}) : super(key: key);

  Widget _buildPageContent(BuildContext context){
    
    return Scaffold(
      appBar: new AppBar(
        leading: new FlatButton(
          child: Icon(Icons.arrow_back_ios,),
          onPressed: (){
             Navigator.push(
              context,
               MaterialPageRoute(builder: (context) => Auth()),
            );
          },
        ),
        title: new Text('Sign Page'),
        backgroundColor: Color.fromRGBO(195, 230, 228, 1),
      ),
          body: Form(
            key: _formKey2,
            child: Container(
        decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage("images/stars.jpg"),fit: BoxFit.cover)
            ),
        padding: EdgeInsets.all(20.0),
        
        child: Stack(
        children: <Widget>[
            
      ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    ListTile(
                      title: TextFormField(
                        controller: namecontroller,
                        validator: (String value){
                          if(value.isEmpty){
                            return'Please enter Your name ';
                          }
                        },
                        keyboardType: TextInputType.text,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: TextStyle(color: Colors.white70),
                          border: InputBorder.none,
                          icon: Icon(Icons.lock,color: Colors.white30,)
                        ),
                      ),
                    ),
                    Divider(color: Colors.grey.shade600,),
                    ListTile(
                      title: TextFormField(
                        controller: batchcontroller,
                         validator: (String value){
                          if(value.isEmpty){
                            return'Please enter your Batch';
                          }
                        },
                        keyboardType: TextInputType.text,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Course / Batch",
                          hintStyle: TextStyle(color: Colors.white70),
                          border: InputBorder.none,
                          icon: Icon(Icons.lock,color: Colors.white30,)
                        ),
                      ),
                    ),
                    Divider(color: Colors.grey.shade600,),
                    ListTile(
                      title: TextFormField(
                        controller: emailcontroller,
                         validator: (String value){
                          if(value.isEmpty){
                            return'Please enter Your name ';
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Email Adress",
                          hintStyle:TextStyle(color: Colors.white70),
                          border: InputBorder.none,
                          icon: Icon(Icons.email,color: Colors.white30,)
                        ),
                      ),
                    ),
                    Divider(color: Colors.grey.shade600,),
                    ListTile(
                      title: TextFormField(
                        controller: passwordcontroller,
                         validator: (String value){
                          if(value.length<=5){
                            return 'Password should be more than 6';
                          }
                        },
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white70),
                          border: InputBorder.none,
                          icon: Icon(Icons.lock,color: Colors.white30,)
                        ),
                      ),
                    ),
                    Divider(color: Colors.grey.shade600,),
                    ListTile(
                      title: TextFormField(
                        controller: cpasswordcontroller,
                         validator: (String value){
                          if(cpasswordcontroller!=passwordcontroller){
                            return'Password Doesnot match';
                          }
                        },
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: " Confirm Password",
                          hintStyle:TextStyle(color: Colors.white70),
                          border: InputBorder.none,
                          icon: Icon(Icons.lock,color: Colors.white30,)
                        ),
                      ),
                    ),
                     Divider(color: Colors.grey.shade600,),
                    SizedBox(height: 20,),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            onPressed: (){
                              if(! _formKey2.currentState.validate())
                              {
                                  print("Sign up complete");
                              }
                            },
                            color: Color.fromRGBO(195, 230, 228, 1),
                            child: Text("Sign Up",style: TextStyle(color: Colors.black),),
                          ),
                        ) 
                        ],
                    ),
                    SizedBox(height: 40,),
                     new Text("Already Have a Account?",
                     style: TextStyle(color: Colors.white),
                     ),
                  ],
                )
              ],
            ),
        ],
       ), 
      ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPageContent( context),
    );
  }
}