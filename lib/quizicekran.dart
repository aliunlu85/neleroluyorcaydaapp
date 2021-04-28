import 'package:flutter/material.dart';
import 'package:nocapp/quizsonucekrani.dart';

class quizicekran extends StatefulWidget {
  @override
  _quizicekranState createState() => _quizicekranState();
}

class _quizicekranState extends State<quizicekran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("...quiz ekranındasınız..."),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Doğru Cevap Sayınız: 0",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "Yanlış Cevap Sayınız: 0",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Text(
              "Aşağıdaki gördüğünüz tarihi mekanın adı nedir?",
              style: TextStyle(color: Colors.red,fontSize: 20),
            ),
            Image.asset("resimler/caytashan.jpg"),
            SizedBox(
              width: 250,
              height: 50,
              child: RaisedButton(
                child: Text("Taşhan"),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => quizsonucekrani(
                                dogrusayisi: 3,
                              )));
                },
              ),
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: RaisedButton(
                child: Text("Taşhan"),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => quizsonucekrani(
                                dogrusayisi: 3,
                              )));
                },
              ),
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: RaisedButton(
                child: Text("Taşhan"),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => quizsonucekrani(
                                dogrusayisi: 3,
                              )));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
