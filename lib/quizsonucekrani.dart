import 'package:flutter/material.dart';
import 'package:nocapp/Anasayfa.dart';

class quizsonucekrani extends StatefulWidget {
  int dogrusayisi;
  quizsonucekrani({this.dogrusayisi});

  @override
  _quizsonucekraniState createState() => _quizsonucekraniState();
}

class _quizsonucekraniState extends State<quizsonucekrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Ekranı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Doğru Cevap Sayınız: 1",
              style: TextStyle(fontSize: 18),
            ),
            Text("Final de burayı SQL ile yapmayı planladım", style: TextStyle(fontSize: 18),),
            RaisedButton(
              child: Text("Bitir"),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            RaisedButton(
              child: Text("Ana Sayfa"),
              onPressed: (){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Anasayfa()));
              },
            ),
          ],
        ),
      ),

    );
  }
}
