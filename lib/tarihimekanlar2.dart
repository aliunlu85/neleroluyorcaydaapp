import 'package:flutter/material.dart';
import 'package:nocapp/Anasayfa.dart';
import 'package:nocapp/tarihimekanlar1.dart';

class tarihi2 extends StatefulWidget {
  @override
  _tarihi2State createState() => _tarihi2State();
}

class _tarihi2State extends State<tarihi2> {
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
        child:  Column(
          children: [
            SizedBox(
              width: ekrangenisligi,
              child: Image.asset("resimler/caytashan.jpg"),
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
                              builder: (context) => tarihi(),
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
                              builder: (context) => Anasayfa(),
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
                    "Taşhan",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: ekrangenisligi/20,
                    ),
                  ),
                  Row(
                    children: [
                      kendiyaziwidget("Çay Kervansarayı (Taşhan) - Afyonkarahisar", ekrangenisligi/25),
                    ],
                  ),
                ],
              ),

            ),
            Padding(
              padding: EdgeInsets.all(ekranyuksekligi/100),
              child: kendiyaziwidget("Selçuklu dönemi taş külliyesine ait bir yapıdır. Avlulu ve kapalı kervansaray tiplerindendir. Kare planlı, merkezde üzeri ışıklıklı dört fil ayağı ve çevresinde 12 ayak üzerinde tonoz örtülü, dıştan destek çıkıntılı kale görünümlü, taç kapılı kargir bir yapıdır. Ebul-Mücahhit Yusufhan tarafından III. Gıyaseddin Keyhüsrev zamanında, 1278 yılında Mimar Mehmet oğlu Oğul Bey’e yaptırılmıştır. Mimarın, simgesi olan pars arması, kapı üstüne işlenmiştir. Kare planı ile Anadolu Selçuklu Dönemi mimarisinin tek örneğidir. \n\nKaynak : Anadolu'nun Kilidi AFYON kitabından alıntı yapılmıştır.", ekrangenisligi/25),

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
