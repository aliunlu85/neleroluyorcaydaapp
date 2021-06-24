import 'package:flutter/material.dart';
import 'package:nocapp/Anasayfa.dart';
import 'package:nocapp/tarihimekanlar2.dart';

class tarihi extends StatefulWidget {
  @override
  _tarihiState createState() => _tarihiState();
}

class _tarihiState extends State<tarihi> {
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
            GestureDetector(
              onLongPress: (){
                print("tıklandısss");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Anasayfa(),
                    ));
              },
            child: SizedBox(

              width: ekrangenisligi,
              child: Image.asset("resimler/caytascami.jpg"),
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
                          "> > > > > > > > > > >", ekrangenisligi / 25),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => tarihi2(),
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
                    "Taş Cami",
                    style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: ekrangenisligi/20,
                    ),
                  ),
                  Row(
                    children: [
                      kendiyaziwidget("Çay Taş Medrese - Afyonkarahisar", ekrangenisligi/25),
                    ],
                  ),
                ],
              ),

            ),
            Padding(
              padding: EdgeInsets.all(ekranyuksekligi/100),
              child: kendiyaziwidget("Çay ilçe merkezinde, Taş külliyesinden bir bölümdür. Merkezi kubbeli, orta hacmin her iki yanı uzun tonoz hacimli, girişin her iki yanında kubbeli küçük hacimli, güneyde tonoz hacimli, mihraplı eyvan, her iki yanında ise kubbeli birer hacimden oluşan kesme taş kaplamalı kargir bir yapıdır. Mihrap, eyvan kemerleri, merkezi kubbe kasnağı ile kubbeye geçiş köşe üçgenleri mavi ve lacivert sırlı tuğla, kubbe kasnağı ve kubbe tuğla bezeklidir. Günümüzde cami olarak kullanılmaktadır. Mimarı, külliyenin mimarı olan Oğul Bey’dir. III. Gıyaseddin Keyhüsrev zamanında 1278 yılında Yusuf Bey tarafından yaptırılmıştır.", ekrangenisligi/25),

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
