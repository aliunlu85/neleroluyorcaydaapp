import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:nocapp/Anasayfa.dart';


class animasyonsayfasi extends StatefulWidget {
  @override
  _animasyonsayfasiState createState() => _animasyonsayfasiState();
}

class _animasyonsayfasiState extends State<animasyonsayfasi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Çay bizim için", style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.normal),
          ),
          SizedBox(height: 10.0,),
          FadeAnimatedTextKit(
            onTap: ()
            {
              print("çay");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Anasayfa(),
                  ));
            }
            ,
              text: ["sadece yaşanan bir yer değil","kalbin attığı","yaşamın cennette buluştuğu yer"],
            textStyle: TextStyle(fontSize: 42.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            alignment: AlignmentDirectional.center,
          )
        ],
      ),
    );
  }
}
