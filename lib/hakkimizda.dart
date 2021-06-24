import 'package:flutter/material.dart';

class hakkimizda extends StatefulWidget {
  @override
  _hakkimizdaState createState() => _hakkimizdaState();
}

class _hakkimizdaState extends State<hakkimizda> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("...Hakkımızda..."),
      ),
      body: SingleChildScrollView(
        child:  Column(
          children: [


            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "-----------------------------------------------------",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,

                    ),
                  ),

                ],
              ),

            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Bu uygulama \nDr. Öğretim Üyesi Ahmet Cevahir ÇINAR \ntarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 203301104 numaralı ALİ ÜNLÜ tarafından 25.06.2021 günü yapılmıştır.", style: TextStyle(color: Colors.black, fontSize: 25),),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "-----------------------------------------------------",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,

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




