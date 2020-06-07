import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: '15 Puzzle App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> _shuffle = [0, 1, 2, 3, 4, 5, 6, 7, 8];
  List<int> _topList = [1, 2, 3];
  List<int> _cntList = [4, 5, 6];
  List<int> _btmList = [0, 7, 8];

  void _gameStart(){
    _shuffle.shuffle();
    setState(() {
      _topList = [_shuffle[0], _shuffle[1], _shuffle[2]];
      _cntList = [_shuffle[3], _shuffle[4], _shuffle[5]];
      _btmList = [_shuffle[6], _shuffle[7], _shuffle[8]];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50.0, bottom: 30.0),
              child: FlatButton(
                onPressed: (){
                  _gameStart();
                },
                child: Text(
                  'Tap here',
                  style: TextStyle(fontSize: 30),
                ),
              )
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  _topList[0].toString(),
                                  style: TextStyle(fontSize: 50),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  _topList[1].toString(),
                                  style: TextStyle(fontSize: 50),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  _topList[2].toString(),
                                  style: TextStyle(fontSize: 50),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  _cntList[0].toString(),
                                  style: TextStyle(fontSize: 50),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  _cntList[1].toString(),
                                  style: TextStyle(fontSize: 50),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  _cntList[2].toString(),
                                  style: TextStyle(fontSize: 50),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  _btmList[0].toString(),
                                  style: TextStyle(fontSize: 50),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  _btmList[1].toString(),
                                  style: TextStyle(fontSize: 50),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: FlatButton(
                                onPressed: () {},
                                child: Text(
                                  _btmList[2].toString(),
                                  style: TextStyle(fontSize: 50),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
