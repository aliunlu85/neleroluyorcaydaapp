class Kisiler2 {
  String kisi_ad;
  int kisi_yas;

  Kisiler2(this.kisi_ad, this.kisi_yas);

  factory Kisiler2.fromJson(Map<dynamic,dynamic> json){
    return Kisiler2(json["kisi_ad"] as String, json["kisi_yas"] as int);
  }
}