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

  var refKisiler2 = FirebaseDatabase.instance.reference().child("kisiler_tablo");

  Future<void> kisiEkle() async {
    var bilgi = HashMap<String,dynamic>();
    bilgi["kisi_ad"] = "Ahmet Cevhair";
    bilgi["kisi_yas"] = 12;
    refKisiler2.push().set(bilgi);
  }
  Future<void> kisiSil() async {
    refKisiler2.child("-McvYz77XELLHKlVyhIR").remove();
  }

  Future<void> kisiGuncelle() async {
    var guncelbilgi = HashMap<String,dynamic>();
    guncelbilgi["kisi_ad"] = "Yeni Zeynep";
    guncelbilgi["kisi_yas"] = 90;
    refKisiler2.child("-MNJxnDhaVhfjU2v0suR").update(guncelbilgi);
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //kisiEkle();
    //kisiSil();
    //kisiGuncelle();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Veriler FireBase içinde'),
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
