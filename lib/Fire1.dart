import 'dart:io';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'KisiDetaySayfa.dart';
import 'KisiKayitSayfa.dart';
import 'Kisiler.dart';

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
      home: Fire1(),
    );
  }
}

class Fire1 extends StatefulWidget {
  @override
  _Fire1State createState() => _Fire1State();
}

class _Fire1State extends State<Fire1> {
  bool aramaYapiliyorMu = false;
  String aramaKelimesi = "";

  var refKisiler = FirebaseDatabase.instance.reference().child("kiler_tablo");

  Future<void> sil(String kisi_id) async {
    print("$kisi_id silindi");
    setState(() {});
  }

  Future<bool> uygulamayiKapat() async {
    await exit(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            uygulamayiKapat();
          },
        ),
        title: aramaYapiliyorMu
            ? TextField(
                decoration:
                    InputDecoration(hintText: "Arama için birşey yazın"),
                onChanged: (aramaSonucu) {
                  print("Arama sonucu : $aramaSonucu");
                  setState(() {
                    aramaKelimesi = aramaSonucu;
                  });
                },
              )
            : Text("Kişiler Uygulaması"),
        actions: [
          aramaYapiliyorMu
              ? IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      aramaYapiliyorMu = false;
                      aramaKelimesi = "";
                    });
                  },
                )
              : IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      aramaYapiliyorMu = true;
                    });
                  },
                ),
        ],
      ),
      body: WillPopScope(
        onWillPop: uygulamayiKapat,
        child: StreamBuilder<Event>(
          stream: refKisiler.onValue,
          builder: (context, event) {
            if (event.hasData) {
              var kisilerListesi = <Kisiler>[];
              var gelenDegerler = event.data.snapshot.value;
              if (gelenDegerler != null) {
                gelenDegerler.forEach((key, nesne) {
                  var gelenKisi = Kisiler.fromJson(key, nesne);
                });
              }
              return ListView.builder(
                itemCount: kisilerListesi.length,
                itemBuilder: (context, indeks) {
                  var kisi = kisilerListesi[indeks];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => KisiDetaySayfa(
                                    kisi: kisi,
                                  )));
                    },
                    child: Card(
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              kisi.kisi_ad,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(kisi.kisi_yas),
                            IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.black54,
                              ),
                              onPressed: () {
                                sil(kisi.kisi_id);
                              },
                            ),
                          ],
                        ),
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => KisiKayitSayfa()));
        },
        tooltip: 'Kişi Ekle',
        child: Icon(Icons.add),
      ),
    );
  }
}
