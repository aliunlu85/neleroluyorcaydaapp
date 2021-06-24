import 'package:flutter/material.dart';
import 'package:nocapp/DetaySayfa.dart';
import 'package:nocapp/anamenuler.dart';
import 'package:nocapp/animasyonsayfasi.dart';
import 'package:nocapp/dosyaislemi.dart';
import 'package:nocapp/fireb.dart';
import 'package:nocapp/grafiksayfasi.dart';
import 'package:nocapp/hakkimizda.dart';
import 'package:nocapp/iletisim.dart';
import 'package:nocapp/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  String gelenkullaniciadi;
  String gelensifre;

  Future<void> oturumbilgisioku() async {
    var sp = await SharedPreferences.getInstance();
    setState(() {
      gelenkullaniciadi =
          sp.getString("kullaniciad") ?? "kullanici adı gelmedi";
      gelensifre = sp.getString("sifre") ?? "sifre bilgisi gelmedi";
    });
  }

  Future<void> cikisyap() async {
    var sp = await SharedPreferences.getInstance();
    sp.remove("kullaniciad");
    sp.remove("sifre");
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => GirisEkrani()));
  }

  Future<List<Anamenuler>> anamenulerigetir() async {
    var anamenulistesi = List<Anamenuler>();
    var m1 = Anamenuler(1, "Otobüs Saatleri", "otobussatleri.jpg");
    var m2 = Anamenuler(2, "Duyuru", "duyuru.png");
    var m3 = Anamenuler(3, "Nöbetçi Eczane", "nobec.png");
    var m4 = Anamenuler(4, "Korona Tablosu", "corona.png");
    var m5 = Anamenuler(5, "5 Soruda Çay", "quiz.png");
    var m6 = Anamenuler(6, "Tarih Kokan Yerler", "tarih.png");

    anamenulistesi.add(m1);
    anamenulistesi.add(m2);
    anamenulistesi.add(m3);
    anamenulistesi.add(m4);
    anamenulistesi.add(m5);
    anamenulistesi.add(m6);
    return anamenulistesi;
  }

  @override
  void initState() {
    super.initState();
    oturumbilgisioku();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hoşgeldin: $gelenkullaniciadi"),
        actions: [
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              cikisyap();
            },
          ),
        ],
      ),
      body: FutureBuilder<List<Anamenuler>>(
        future: anamenulerigetir(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var anamenulistesi = snapshot.data;

            return GridView.builder(
              itemCount: anamenulistesi.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 2.2,
              ),
              itemBuilder: (context, index) {
                var menu = anamenulistesi[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetaySayfa(
                                  menu: menu,//detay sayfasına gönderdim
                                )));
                  },
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("resimler/${menu.menuresmi}"),
                        ),
                        Text(
                          menu.menu_adi,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return Center();
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text("Neler Oluyor Çay' da?", style: TextStyle(color: Colors.white, fontSize: 30),),

              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
            ),
            ListTile(
              title: Text("Hakkımızda", style: TextStyle(color: Colors.red, fontSize: 20),),
              leading: Icon(Icons.done, color: Colors.deepPurple),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => hakkimizda(),
                        ));
              },
            ),
            ListTile(
              title: Text("İletişim", style: TextStyle(color: Colors.red, fontSize: 20),),
              leading: Icon(Icons.add_ic_call, color: Colors.deepPurple),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => iletisim(),
                    ));
              },
            ),
            ListTile(
              title: Text("Dosya İslemi", style: TextStyle(color: Colors.red, fontSize: 20),),
              leading: Icon(Icons.message, color: Colors.deepPurple),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => dosyaislemi(),
                    ));
              },
            ),
            ListTile(
              title: Text("Mesajınız Var", style: TextStyle(color: Colors.red, fontSize: 20),),
              leading: Icon(Icons.email, color: Colors.deepPurple),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => animasyonsayfasi(),
                    ));
              },
            ),
            ListTile(
              title: Text("İstatistik", style: TextStyle(color: Colors.red, fontSize: 20),),
              leading: Icon(Icons.addchart, color: Colors.deepPurple),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => grafiksayfasi(),
                    ));
              },
            ),
            ListTile(
              title: Text("Bize bir Mesaj At", style: TextStyle(color: Colors.red, fontSize: 20),),
              leading: Icon(Icons.addchart, color: Colors.deepPurple),
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>sadecemerhaba(),
                    ));
              },
            ),

          ],
        ),
      ),
    );
  }
}
