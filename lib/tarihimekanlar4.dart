import 'package:flutter/material.dart';
import 'package:nocapp/Anasayfa.dart';
import 'package:nocapp/tarihimekanlar2.dart';
import 'package:nocapp/tarihimekanlar3.dart';

class tarihi4 extends StatefulWidget {
  @override
  _tarihi4State createState() => _tarihi4State();
}

class _tarihi4State extends State<tarihi4> {
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
                child: Image.asset("resimler/baraj.jpg"),
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
                              builder: (context) => tarihi3(),
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
              padding: EdgeInsets.all(ekranyuksekligi / 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Çay Barajı",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: ekrangenisligi / 20,
                    ),
                  ),
                  Row(
                    children: [
                      kendiyaziwidget(
                          "Çay Barajı",
                          ekrangenisligi / 25),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranyuksekligi / 100),
              child: kendiyaziwidget(
                  "105 metre yüksekliğiyle bölgenin en yüksek barajıdır. 29 milyon lira sulama faydası sağlanacak ve 7 bin 241 kişiye tarımsal istihdam imkanı yaratılacaktır.",
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
