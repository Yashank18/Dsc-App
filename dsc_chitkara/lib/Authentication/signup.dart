import 'package:dsc_chitkara/Authentication/AuthPage.dart';
import 'package:dsc_chitkara/Authentication/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:ui';



TextEditingController namecontroller = TextEditingController();
TextEditingController batchcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();
TextEditingController cpasswordcontroller = TextEditingController();
TextEditingController emailcontroller = TextEditingController();
String _email;
String _password;
String _batch;
String _name;
String _verify;
class SignupPage extends StatelessWidget {
 const SignupPage({Key key}) : super(key: key);

  Widget _buildPageContent(BuildContext context){

    void validateandsave()
    {
      
      try{
          

      }
      catch(e)
      {
        
      }
    }

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
                        
                        validator: (value){
                          if(value.isEmpty){
                            return'Please enter Your name ';
                          }
                          else{
                            _email=value;
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
                          else{
                            _batch=value;
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
                          else{
                            _password=value;
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
                          _verify=value;
                          if(_verify!=_password){
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
                              validateandsave;
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