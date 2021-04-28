import 'package:flutter/material.dart';
import 'package:nocapp/quizicekran.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Çay İlçesini Ne kadar tanıyorsun?',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: quiz(),
    );
  }
}

class quiz extends StatefulWidget {
  @override
  _quizState createState() => _quizState();
}

class _quizState extends State<quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Çay İlçesini Ne kadar tanıyorsun?"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Quiz' e Hoş Geldiniz",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: RaisedButton(
                child: Text("Başla"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => quizicekran()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
