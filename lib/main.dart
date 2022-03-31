import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: cobaListView(),
      theme: ThemeData.dark(),
    );
  }
}

class cobaListView extends StatelessWidget {
  final List<String> gambar = [
    "assets/images/rimuru.jpg",
    "assets/images/Shuna.jpg",
    "assets/images/benimaru.jpg",
    "assets/images/Diablo.jpg",
    "assets/images/veldora.jpg",
    "assets/images/soei.webp",
  ];

  final List<String> sub = [
    'Rimuru Tempest',
    'Shuna',
    'Benimaru',
    'Diablo',
    'Veldora Tempest',
    'Soei',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Belajar Layout, Tensura Edition"),
        ),
      ),
      body: ListView.builder(
        itemCount: gambar.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                gambar[index],
                width: 350,
                height: 200,
                fit: BoxFit.cover,
              )),
              subtitle: Text(sub[index], style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          );
        },
      ),
    );
  }
}
