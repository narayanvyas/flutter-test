import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Simple Calculator App",
    home: new Home(),
  ));
}

final _firstValue = TextEditingController();
final _secondValue = TextEditingController();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Simple Calculator"),
          centerTitle: true,
        ),
        body: new Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: new TextField(
                        controller: _firstValue,
                        decoration: InputDecoration(labelText: "First Value"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: new TextField(
                        controller: _secondValue,
                        decoration: InputDecoration(labelText: "Second Value"),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 5.0),
                      child: RaisedButton(
                        color: Colors.blue,
                        onPressed: () {},
                        child: Icon(Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 5.0, left: 5.0),
                      child: RaisedButton(
                        color: Colors.blue,
                        onPressed: () {},
                        child: Icon(Icons.arrow_drop_up,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 5.0, left: 5.0),
                      child: RaisedButton(
                        color: Colors.blue,
                        onPressed: () {},
                        child: Icon(Icons.content_cut,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 5.0),
                      child: RaisedButton(
                        color: Colors.blue,
                        onPressed: () {},
                        child: Icon(Icons.airline_seat_individual_suite,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Result Is: ")
                ],
              )
            ],
          ),
        ));
  }
}
