import 'package:flutter/material.dart';

void main() {
  //Uygulama main bloğu içinde çalışır.
  runApp(MaterialApp(
      //Material Standartları için kullanılır.
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  String baslik = "Flutter'da ilk uygulamam";
  String mesaj = "";
  int not = 20;
  @override
  Widget build(BuildContext context) {
    var ogrenciler = ["Ufuk Güleç", "Yunus Başer", "Umut Yıldırım"];
    //Widget'ın çalışan kod bloğu
    return Scaffold(
      // Widget
      appBar: AppBar(
        title: Text(baslik),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: ogrenciler.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Text(ogrenciler[index]);
                  })),
          Center(
            child: ElevatedButton(
              child: const Text("Sonucu gör"),
              onPressed: () {
                if (not >= 50) {
                  mesaj = "Dersten geçti";
                } else if (not >= 40) {
                  mesaj = "Büte kaldı";
                } else {
                  mesaj = "Dersten kaldı";
                }
                var alert = AlertDialog(
                  title: const Text("Sınav sonucu"),
                  content: Text(mesaj),
                );
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              },
            ),
          ),
        ],
      ),
    );
  }
}
