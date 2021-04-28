import 'package:flutter/material.dart';
import 'package:nocapp/Anasayfa.dart';

class imsakiye extends StatefulWidget {
  @override
  _imsakiyeState createState() => _imsakiyeState();
}

class _imsakiyeState extends State<imsakiye> {
  @override
  Widget build(BuildContext context) {
    var ekranbilgisi = MediaQuery.of(context);
    final double ekranyuksekligi = ekranbilgisi.size.height;
    final double ekrangenisligi = ekranbilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("...2021 Çay İmsakiyesi..."),
      ),
      body: SingleChildScrollView(

        child:  Column(
          children: [
            SizedBox(
              width: ekrangenisligi,
              height: ekranyuksekligi/1.5,
              child: Image.asset("resimler/imsakiye2021.png"),
            ),
            Row(
              children: [

              ],
            ),
            Padding(
              padding: EdgeInsets.all(ekranyuksekligi/100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "2021 yılı Çay İlçesi Çay İmsakiyesi",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: ekrangenisligi/20,
                    ),
                  ),
                  Row(
                    children: [
                      kendiyaziwidget("8 Mayıs Cumartesi günü Kadir Gecesi' dir.\n \n13 Mayıs 2021 günü Ramazan Bayramının 1. günüdür.\n\n", ekrangenisligi/25),
                    ],
                  ),
                  SizedBox(
                    width: 500,
                    height: 50,
                    child: RaisedButton(
                      color: Colors.blueAccent,
                      child: Text("Ana Sayfa"),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Anasayfa()));
                      },
                    ),
                  ),
                ],

              ),

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
