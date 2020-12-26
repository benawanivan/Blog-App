import 'package:flutter/material.dart';
import 'detail.dart';

void main() {
  runApp(new MaterialApp(
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;
  Kategori selectedKategori;
  List<Kategori> kategoris = [
    Kategori("Komedi"),
    Kategori("Non Fiksi"),
  ];
  List<DropdownMenuItem> generateItems(List<Kategori> kategoris) {
    List<DropdownMenuItem> items = [];
    for (var item in kategoris) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: new AppBar(
        title: new Center(
          child: Text('UAS PBP Kelompok 7'),
        ),
        backgroundColor: Colors.teal[300],
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Search(),
              new DropdownButton(
                isExpanded: true,
                style: TextStyle(color: Colors.blueGrey),
                value: selectedKategori,
                items: generateItems(kategoris),
                onChanged: (item) {
                  setState(() {
                    selectedKategori = item;
                  });
                },
              ),
              new Post(),
            ],
          ),
        ),
      ),
    );
  }
}

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Cards(
                judul: "Ini Judul",
                penulis: "Ivan Benawan",
                tanggal: "19/12/2020",
                gambar: "img/bromo.jpg",
                isi:
                    " asfd asdf asf asd fasdfasdfasdfasdgsfga fgasf gasfg asfg"),
          ],
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  Cards({this.judul, this.penulis, this.tanggal, this.gambar, this.isi});
  final String judul;
  final String penulis;
  final String tanggal;
  final String gambar;
  final String isi;
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Detail(
                        judul: judul,
                        penulis: penulis,
                        tanggal: tanggal,
                        gambar: gambar,
                        isi: isi)),
              );
            },
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Image.asset(gambar),
                new Padding(padding: new EdgeInsets.all(5.0)),
                new Text(tanggal,
                    style: new TextStyle(
                        fontSize: 12.0,
                        fontFamily: "Delicious",
                        color: Colors.grey)),
                new Padding(padding: new EdgeInsets.all(5.0)),
                new Text(judul,
                    style: new TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Delicious",
                        color: Colors.black)),
                new Padding(padding: new EdgeInsets.all(5.0)),
                new Text(penulis,
                    style: new TextStyle(
                        fontSize: 12.0,
                        fontFamily: "Delicious",
                        color: Colors.grey)),
                new Padding(padding: new EdgeInsets.all(3.0)),
                new Text(isi,
                    style: new TextStyle(
                        fontSize: 12.0,
                        fontFamily: "Delicious",
                        color: Colors.grey)),
                new Padding(padding: new EdgeInsets.all(5.0)),
              ],
            ),
          )),
    );
  }
}

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String teks = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: new TextField(
        style: TextStyle(fontSize: 20),
        decoration: new InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
        onSubmitted: (String str) {
          setState(() {
            teks = str;
          });
        },
      ),
    );
  }
}

class Kategori {
  String name;
  Kategori(this.name);
}
