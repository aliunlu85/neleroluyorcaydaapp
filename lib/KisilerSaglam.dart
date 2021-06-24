class KisilerSaglam {
  String kisi_ad;
  int kisi_yas;

  KisilerSaglam(this.kisi_ad, this.kisi_yas);

  factory KisilerSaglam.fromJson(Map<dynamic,dynamic> json){
    return KisilerSaglam(json["kisi_ad"] as String, json["kisi_yas"] as int);
  }
}