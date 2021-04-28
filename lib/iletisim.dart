import 'package:flutter/material.dart';

class iletisim extends StatefulWidget {
  @override
  _iletisimState createState() => _iletisimState();
}

class _iletisimState extends State<iletisim> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("İletişim ekibimiz için \naliunlu85@hotmail.com \nadresine mail atmanız halinde size en yakın zamanda cevap verilecektir. ilginize şimdiden teşekkür ederiz. Sağlıklı günlerde buluşmak dileğiyle.\n \n \n Neler Oluyor Çay' da Ekibi", style: TextStyle(color: Colors.black54, fontSize: 30),),
    );
  }
}
