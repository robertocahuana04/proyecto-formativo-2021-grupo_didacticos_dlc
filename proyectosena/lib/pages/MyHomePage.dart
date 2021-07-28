import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _etiquetas(),
            Divider(
              color: Colors.grey,
              height: 0,
              thickness: 0.5,
            ),
          ],
        ),
      ),
    );
  }

  Widget _appBar() {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0.5),
        child: Container(
          color: Colors.black38,
          height: 0.75,
        ),
      ),
      elevation: 0,
      centerTitle: true,
      backgroundColor: Color(0xFFF9F9F9),
      title: Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          widget.title,
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      leading: IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesome.superpowers,
            color: Colors.black,
            size: 38,
          )),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.add_shopping_cart,
            color: Colors.black,
            size: 36,
          ),
        )
      ],
    );
  }

  Widget _etiquetas() {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.keyboard_arrow_down,
                size: 25,
              ),
              Text(
                "CATEGORIAS",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
