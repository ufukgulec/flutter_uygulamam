import 'package:flutter/material.dart';

void main() {
  //Uygulama main bloğu içinde çalışır.
  runApp(MaterialApp(
      //Material Standartları için kullanılır.
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  String baslik = "Flutter'da ilk uygulamam";
  int not = 20;
  @override
  Widget build(BuildContext context) {
    //Widget'ın çalışan kod bloğu
    return Scaffold(
      // Widget
      appBar: AppBar(
        title: Text(baslik),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Sonucu gör"),
          onPressed: () {
            String mesaj = "";
            if (not >= 50) {
              mesaj = "Dersten geçti";
            } else if (not >= 40) {
              mesaj = "Büte kaldı";
            } else {
              mesaj = "Dersten kaldı";
            }
            var alert = const AlertDialog(
              title: Text("Sınav sonucu"),
              content: Text(),
            );
            showDialog(
                context: context, builder: (BuildContext context) => alert);
          },
        ),
      ),
    );
  }
}
