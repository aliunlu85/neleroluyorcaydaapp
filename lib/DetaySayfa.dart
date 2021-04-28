import 'package:flutter/material.dart';
import 'package:nocapp/Anasayfa.dart';
import 'package:nocapp/anamenuler.dart';
import 'package:nocapp/imsakiye.dart';
import 'package:nocapp/nobeczane.dart';
import 'package:nocapp/quiz.dart';
import 'package:nocapp/tarihimekanlar1.dart';
import 'package:url_launcher/url_launcher.dart';

class DetaySayfa extends StatefulWidget {
  Anamenuler menu;

  DetaySayfa({this.menu});

  @override
  _DetaySayfaState createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.menu.menu_adi)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${widget.menu.menuresmi}"),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                child: Text("${widget.menu.menu_adi}  TIKLAYINIZ"),
                color: Colors.purple,
                textColor: Colors.white,
                onPressed: () {
                  if (widget.menu.menu_id==1)
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>imsakiye()));
                    }
                  print("${widget.menu.menu_adi}");
                  if (widget.menu.menu_id==2)
                  {
                    _facebookweb();
                  }
                  print("${widget.menu.menu_adi}");
                  if (widget.menu.menu_id==3)
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>nobeczane()));
                  }
                  print("${widget.menu.menu_adi}");
                  if (widget.menu.menu_id==5)
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>quiz()));
                  }
                  print("${widget.menu.menu_adi}");
                  if (widget.menu.menu_id==6)
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>tarihi()));
                  }
                  print("${widget.menu.menu_adi}");
                  if (widget.menu.menu_id==4)
                  {
                    _siteyegit();
                  }
                  print("${widget.menu.menu_adi}");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
void _facebookweb() async {
  const url = 'https://www.facebook.com/groups/neleroluyorcayda/';
  if (await canLaunch(Uri.encodeFull(url))) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
void _siteyegit() async {
  const url = 'https://covid19.saglik.gov.tr/';
  if (await canLaunch(Uri.encodeFull(url))) {
    await launch(url);
  } else {
  throw 'Could not launch $url';
}
}