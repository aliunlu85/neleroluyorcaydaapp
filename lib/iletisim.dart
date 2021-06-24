import 'package:flutter/material.dart';

class iletisim extends StatefulWidget {
  @override
  _iletisimState createState() => _iletisimState();
}

class _iletisimState extends State<iletisim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("...Şikayetleriniz için..."),
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
              child: Text("aliunlu85@hotmail.com", style: TextStyle(color: Colors.black, fontSize: 25),),
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
