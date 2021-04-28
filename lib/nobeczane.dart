import 'package:flutter/material.dart';
import 'package:nocapp/Anasayfa.dart';

class nobeczane extends StatefulWidget {
  @override
  _nobeczaneState createState() => _nobeczaneState();
}

class _nobeczaneState extends State<nobeczane> {
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
            SizedBox(
              width: ekrangenisligi,
              height: ekranyuksekligi/5,
              child: Image.asset("resimler/nobec.png"),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: ekrangenisligi / 8,
                    child: FlatButton(
                      child: kendiyaziwidget(
                          "< < < < < D Ü N < < < <", ekrangenisligi / 25),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Anasayfa(),
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
                          "> > > > YARIN > > > >", ekrangenisligi / 25),
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
                    "FLUTTER ECZANESİ",
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
              child: kendiyaziwidget("Nobetçi eczane sayfası yapmak istedim, fakat küçük bir ilçe olduğumuz için aylık bir tabloya bile ulaşamadım. Finalde ya bir yıllık tablo bulacam ya da görselden kaldıracağım. Bulabilirsem veritabanı ile yapmak güzel olur burayı. Gün gün çeker verileri. Sağlıklı günler.", ekrangenisligi/25),

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
