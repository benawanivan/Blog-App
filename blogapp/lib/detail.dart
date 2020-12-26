import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail({this.judul, this.penulis, this.tanggal, this.gambar, this.isi});
  final String judul;
  final String penulis;
  final String tanggal;
  final String gambar;
  final String isi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: new AppBar(
        backgroundColor: Colors.teal[300],
        leading: new Icon(Icons.home),
        title: new Center(
          child: new Text(judul),
        ),
      ),
      body: Column(
        children: <Widget>[
          Center(child: Image.asset(gambar)),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          tanggal,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          judul,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          penulis,
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          isi,
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
