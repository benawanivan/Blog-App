import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Cards(),
            new Cards(),
            new Cards(),
          ],
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
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
            onPressed: () {},
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Image.asset("img/bromo.jpg"),
                new Padding(padding: new EdgeInsets.all(5.0)),
                new Text("Sample Tanggal",
                    style: new TextStyle(
                        fontSize: 12.0,
                        fontFamily: "Delicious",
                        color: Colors.grey)),
                new Padding(padding: new EdgeInsets.all(5.0)),
                new Text("Sample Judul",
                    style: new TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Delicious",
                        color: Colors.black)),
                new Padding(padding: new EdgeInsets.all(5.0)),
                new Text("Sample Penulis",
                    style: new TextStyle(
                        fontSize: 12.0,
                        fontFamily: "Delicious",
                        color: Colors.grey)),
                new Padding(padding: new EdgeInsets.all(3.0)),
                new Text(
                    "Sample Post Sample Post Sample Post Sample Post Sample Post Sample Post Sample Post",
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
