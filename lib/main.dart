import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Anasayfa.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
   Future<bool>oturumkontol() async{
     var sp=await SharedPreferences.getInstance();
     String gelenkullaniciadi=sp.getString("kullaniciad") ?? "kullaniciadı yok";
     String gelensifre=sp.getString("sifre") ?? "sifre yok";

     if (gelenkullaniciadi=="admin" && gelensifre=="admin")
       {
           return true;
       }
     else
       {
           return false;
       }
   }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neler Oluyor Çay da?',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder<bool>(
        future: oturumkontol(),
        builder: (context, snapshot){
             if(snapshot.hasData)
               {
                   bool gecisizni=snapshot.data;
                   return gecisizni ? Anasayfa() : GirisEkrani();
               } else
                 {
                     return Container();
                 }
        },
      ),
    );
  }
}

class GirisEkrani extends StatefulWidget {
  @override
  _GirisEkraniState createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  var kullaniciadi = TextEditingController();
  var kullanicisifre = TextEditingController();

  var scaffoldKey = GlobalKey<ScaffoldState>();

   Future<void> girisKontrol() async{
       var ka=kullaniciadi.text;
        var s=kullanicisifre.text;

        if (ka=="admin" && s=="admin")
          {
            var sp=await SharedPreferences.getInstance();
            sp.setString("kullaniciad", ka);
            sp.setString("sifre", s);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Anasayfa()));
          }
        else
          {
             scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("Giriş Hatalı"),)) ;
          }
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("Neler Oluyor Çay' da?"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: kullaniciadi,
              decoration: InputDecoration(
                hintText: "Kullanıcı Adını Giriniz",
              ),
            ),
            TextField(
              obscureText: true,
              controller: kullanicisifre,
              decoration: InputDecoration(
                hintText: "Şifrenizi Giriniz",
              ),
            ),
            RaisedButton(
              child: Text("Giriş"),
              onPressed: (){
                   girisKontrol();
              },
            ),
          ],
        ),
      ),
      ),
    );
  }
}
