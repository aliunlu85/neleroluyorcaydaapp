import 'package:flutter/material.dart';
import 'package:nocapp/Anasayfa.dart';
import 'package:nocapp/nobeczane.dart';

class nobeczane2 extends StatefulWidget {
  @override
  _nobeczane2State createState() => _nobeczane2State();
}

class _nobeczane2State extends State<nobeczane2> {
  @override
  Widget build(BuildContext context) {
    var ekranbilgisi = MediaQuery.of(context);
    final double ekranyuksekligi = ekranbilgisi.size.height;
    final double ekrangenisligi = ekranbilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("...Nöbetçi Eczane..."),
      ),
      body: SingleChildScrollView(
        child:  Column(
          children: [
            GestureDetector(
              onDoubleTapCancel: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Anasayfa(

                        )));
              },
              child: SizedBox(
                width: ekrangenisligi,
                height: ekranyuksekligi/2,
                child: Image.asset("resimler/nbec2.png"),
              ),),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: ekrangenisligi / 8,
                    child: FlatButton(
                      child: kendiyaziwidget(
                          "< < < < < GEÇEN AY < < < <", ekrangenisligi / 25),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => nobeczane(),
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
                          "> > > > GELECEK AY > > >", ekrangenisligi / 25),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>Anasayfa(),
                            ));
                      },
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(ekranyuksekligi/100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "NÖBETÇİ ECZANE",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: ekrangenisligi/20,
                    ),
                  ),
                  Row(
                    children: [
                      kendiyaziwidget("Çay İlçesi Nöbetçi Eczane Tablosu", ekrangenisligi/25),
                    ],
                  ),
                ],
              ),

            ),
            Padding(
              padding: EdgeInsets.all(ekranyuksekligi/100),
              child: kendiyaziwidget(" NÖBETÇİ ECZANE TABLOSU EKTEDİR", ekrangenisligi/25),

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
