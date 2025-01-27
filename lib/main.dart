import 'package:flutter/material.dart';
import 'package:helloworld/signup.dart';

void main() {
  runApp (new MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        canvasColor: Colors.white54,
      ),
      debugShowCheckedModeBanner: false,
       routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage()
      },
     
      
      
      home: new MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      body : Column(
        children : <Widget>[
           Divider(height: 80,),
          Container(
            child: Stack(
              children: <Widget>[
               
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                   child: Text(
                    'WELCOME',
                    style: TextStyle(
                      fontSize: 80.0, fontWeight: FontWeight.bold,
                      color: Colors.blue
                    ),
                  ), 
                )
              ]
            ),
          ),
            Container(
            padding: EdgeInsets.only(top:35.0, left:20.0, right:20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration:InputDecoration(
                    labelText:'EMAIL',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:BorderSide (color:Colors.blue)
                    )
                  ),
                ),
                SizedBox(height: 20.0),
                 TextField(
                  decoration:InputDecoration(
                    labelText:'PASSWORD',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:BorderSide (color:Colors.blue)
                    )
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 5.0),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top:15.0, left:20.0),
                  child: InkWell(
                    child: Text('FORGOT PASSWORD?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      decoration: TextDecoration.underline
                    ),
                    ),
                  ),

                ),
                  SizedBox(height:40.0),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.blueAccent,
                    color: Colors.blue,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){},
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Monserrat'
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ),
          SizedBox(height:15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'New to FHR?',
                style: TextStyle(
                  fontFamily: 'Monserrat'
                ),
              ),
              SizedBox(width:5.0),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/signup');
                }  ,
                child: Text('Register',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline
                ),
                ),
              )

        ]),


           
           
        ],
      ),
    );
  }}
  