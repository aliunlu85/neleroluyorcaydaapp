import 'dart:collection';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: sadecemerhaba(title: 'Flutter Demo Home Page'),
    );
  }
}

class sadecemerhaba extends StatefulWidget {
  sadecemerhaba({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _sadecemerhabaState createState() => _sadecemerhabaState();
}

class _sadecemerhabaState extends State<sadecemerhaba> {

 var refTest=FirebaseDatabase.instance.reference().child("test");

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    var bilgi=HashMap<String, dynamic>();
    bilgi["mesaj"]="merhaba";
    refTest.push().set(bilgi);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Merhaba'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),

    );
  }
}
