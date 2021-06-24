import 'dart:collection';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:nocapp/KisilerSaglam.dart';


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
      home: firebasesaglam(title: 'Flutter Demo Home Page'),
    );
  }
}

class firebasesaglam extends StatefulWidget {
  firebasesaglam({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _firebasesaglamState createState() => _firebasesaglamState();
}

class _firebasesaglamState extends State<firebasesaglam> {

  var refKisiler = FirebaseDatabase.instance.reference().child("kisiler_tablo");

  Future<void> kisiEkle() async {
    var bilgi = HashMap<String,dynamic>();
    bilgi["kisi_ad"] = "Zeynep";
    bilgi["kisi_yas"] = 10;
    refKisiler.push().set(bilgi);
  }

  Future<void> kisiSil() async {
    refKisiler.child("-MNJxD_3LkxaxhYBiMb9").remove();
  }

  Future<void> kisiGuncelle() async {
    var guncelbilgi = HashMap<String,dynamic>();
    guncelbilgi["kisi_ad"] = "Yeni Zeynep";
    guncelbilgi["kisi_yas"] = 90;
    refKisiler.child("-MNJxnDhaVhfjU2v0suR").update(guncelbilgi);
  }

  Future<void> tumKisiler() async {

    refKisiler.onValue.listen((event) {
      var gelenDegerler = event.snapshot.value;

      if(gelenDegerler != null){

        gelenDegerler.forEach((key,nesne) {
          var gelenKisi = KisilerSaglam.fromJson(nesne);

          print("*****************");
          print("Kişi key : $key");
          print("Kişi ad : ${gelenKisi.kisi_ad}");
          print("Kişi yaş : ${gelenKisi.kisi_yas}");

        });
      }


    });
  }

  Future<void> tumKisilerOnce() async {

    refKisiler.once().then((DataSnapshot snapshot) {

      var gelenDegerler = snapshot.value;

      if(gelenDegerler != null){

        gelenDegerler.forEach((key,nesne) {
          var gelenKisi = KisilerSaglam.fromJson(nesne);

          print("*****************");
          print("Kişi key : $key");
          print("Kişi ad : ${gelenKisi.kisi_ad}");
          print("Kişi yaş : ${gelenKisi.kisi_yas}");

        });
      }


    });
  }

  Future<void> esitlikArama() async {

    var sorgu = refKisiler.orderByChild("kisi_yas").equalTo(15);

    sorgu.onValue.listen((event) {
      var gelenDegerler = event.snapshot.value;

      if(gelenDegerler != null){

        gelenDegerler.forEach((key,nesne) {
          var gelenKisi = KisilerSaglam.fromJson(nesne);

          print("*****************");
          print("Kişi key : $key");
          print("Kişi ad : ${gelenKisi.kisi_ad}");
          print("Kişi yaş : ${gelenKisi.kisi_yas}");

        });
      }


    });
  }

  Future<void> limitliVeri() async {

    var sorgu = refKisiler.limitToLast(2);

    sorgu.onValue.listen((event) {
      var gelenDegerler = event.snapshot.value;

      if(gelenDegerler != null){

        gelenDegerler.forEach((key,nesne) {
          var gelenKisi = KisilerSaglam.fromJson(nesne);

          print("*****************");
          print("Kişi key : $key");
          print("Kişi ad : ${gelenKisi.kisi_ad}");
          print("Kişi yaş : ${gelenKisi.kisi_yas}");

        });
      }


    });
  }

  Future<void> degerAraligi() async {

    var sorgu = refKisiler.orderByChild("kisi_yas").startAt(18).endAt(40);

    sorgu.onValue.listen((event) {
      var gelenDegerler = event.snapshot.value;

      if(gelenDegerler != null){

        gelenDegerler.forEach((key,nesne) {
          var gelenKisi = KisilerSaglam.fromJson(nesne);

          print("*****************");
          print("Kişi key : $key");
          print("Kişi ad : ${gelenKisi.kisi_ad}");
          print("Kişi yaş : ${gelenKisi.kisi_yas}");

        });
      }


    });
  }

  @override
  void initState() {
    super.initState();
    kisiEkle();
    //kisiSil();
    //kisiGuncelle();
    //tumKisiler();
    //tumKisilerOnce();
    //esitlikArama();
    //limitliVeri();
    //degerAraligi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
