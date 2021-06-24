import 'package:flutter/material.dart';
import 'package:nocapp/Anasayfa.dart';
import 'package:nocapp/tarihimekanlar2.dart';
import 'package:nocapp/tarihimekanlar4.dart';

class tarihi3 extends StatefulWidget {
  @override
  _tarihi3State createState() => _tarihi3State();
}

class _tarihi3State extends State<tarihi3> {
  @override
  Widget build(BuildContext context) {
    var ekranbilgisi = MediaQuery.of(context);
    final double ekranyuksekligi = ekranbilgisi.size.height;
    final double ekrangenisligi = ekranbilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("...tarihimiz..."),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onDoubleTap: () {
                print("tıklandı.");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Anasayfa(),
                    ));
              },
              child: SizedBox(
                width: ekrangenisligi,
                child: Image.asset("resimler/tarih.png"),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: ekrangenisligi / 8,
                    child: FlatButton(
                      child: kendiyaziwidget(
                          "< < < < < < < < < < < <", ekrangenisligi / 25),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => tarihi2(),
                            ));
                      },
                      color: Colors.orange,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: ekrangenisligi / 8,
                    child: FlatButton(
                      child: kendiyaziwidget(
                          "> > > > > > > > > > >", ekrangenisligi / 25),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => tarihi4(),
                            ));
                      },
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(ekranyuksekligi / 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Saat Kulesi",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: ekrangenisligi / 20,
                    ),
                  ),
                  Row(
                    children: [
                      kendiyaziwidget(
                          "Çay Saat Kulesi - Afyonkarahisar",
                          ekrangenisligi / 25),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranyuksekligi / 100),
              child: kendiyaziwidget(
                  "Şehrin tam orta noktasında bulunan saat kulesi, Çaylıların buluşma noktasıdır. Sabah işe giden, öğrencilerin buluştuğu noktadır. Bütün resmi etkinlikler burada yapılır.",
                  ekrangenisligi / 25),
            ),
          ],
        ),
      ),
    );
  }
}

class kendiyaziwidget extends StatelessWidget {
  String icerik;
  double yaziboyutu;

  kendiyaziwidget(this.icerik, this.yaziboyutu);

  @override
  Widget build(BuildContext context) {
    return Text(
      icerik,
      style: TextStyle(fontSize: yaziboyutu),
    );
  }
}
