import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class grafiksayfasi extends StatefulWidget {
  @override
  _grafiksayfasiState createState() => _grafiksayfasiState();
}

class _grafiksayfasiState extends State<grafiksayfasi> {
  @override
  Widget build(BuildContext context) {
    var ekranbilgisi = MediaQuery.of(context);
    final double ekranyuksekligi = ekranbilgisi.size.height;
    final double ekrangenisligi = ekranbilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("...Daha çok neyimiz meşhur? ..."),
      ),
      body:


        Column(
          children: [
                Expanded(child: PieChart(
                    PieChartData(centerSpaceRadius: 80, sections: [

                      PieChartSectionData(
                        color: const Color(0xff2f8a13),
                        value: 17,
                        title: '17%',
                        radius: 17,
                        titleStyle: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffffffff)),
                      ),
                      PieChartSectionData(
                        color: const Color(0xffffc712),
                        value: 40,
                        title: '40%',
                        radius: 40,
                        titleStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffffffff)),
                      ),
                      PieChartSectionData(
                        color: const Color(0xffce3201),
                        value: 40,
                        title: '40% vişne',
                        radius: 40,
                        titleStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffffffff)),
                      ),
                      PieChartSectionData(
                        color: const Color(0xff0272a1),
                        value: 3,
                        title: '3%',
                        radius: 3,
                        titleStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff000000)),
                      )
                    ])),),
          ],
        ),


    );
  }
}
