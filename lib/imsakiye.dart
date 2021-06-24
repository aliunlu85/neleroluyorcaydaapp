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
        title: Text("...Otobüs Saatleri..."),
      ),
      body: SingleChildScrollView(

        child:  Column(
          children: [
            GestureDetector(
              onHorizontalDragCancel:(){
      print("tıklandısss");
      Navigator.push(
      context,
      MaterialPageRoute(
      builder: (context) => Anasayfa(),
      ));
      },
           child:  SizedBox(
              width: ekrangenisligi,
              height: ekranyuksekligi/1.5,
              child: Image.asset("resimler/otsaat.png"),
            ),),
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
                    "Güncel Otobüs Saatleri",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: ekrangenisligi/20,
                    ),
                  ),
                  Row(
                    children: [
                      kendiyaziwidget("24 MAYIS 2021 DEN İTİBAREN", ekrangenisligi/25),
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
