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
  List<String> _shuffle = ['1', '2', '3', '4', '5', '6', '7', '8', ''];
  List<List<String>> _numList = [
    ['1', '2', '3'],
    ['4', '5', '6'],
    ['7', '8', '']
  ];
  bool _top;
  bool _cnt;
  bool _btm;
  int _index;

  void _gameStart() {
    _shuffle.shuffle();
    setState(() {
      _numList = [
        [_shuffle[0], _shuffle[1], _shuffle[2]],
        [_shuffle[3], _shuffle[4], _shuffle[5]],
        [_shuffle[6], _shuffle[7], _shuffle[8]]
      ];
    });
  }

  void _changeNum(number) {
    /*List<int> _sideNum = [];
    List<String> _okList = [];
    _top = _topList.contains('');
    _cnt = _cntList.contains('');
    _btm = _btmList.contains('');

    _switchIndex(int index) {
      switch (_index) {
        case 0:
          _sideNum.add(1);
          break;
        case 1:
          _sideNum.add(0);
          _sideNum.add(2);
          break;
        case 2:
          _sideNum.add(1);
          break;
      }
    }

    if (_top == true) {
      _index = _topList.indexOf('');
      _switchIndex(_index);
      _sideNum.forEach((element) {
        _okList.add(_topList[element]);
      });
      _okList.add(_cntList[_index]);
    } else if (_cnt == true) {
      _index = _cntList.indexOf('');
      _switchIndex(_index);
      _sideNum.forEach((element) {
        _okList.add(_cntList[element]);
      });
      _okList.add(_topList[_index]);
      _okList.add(_btmList[_index]);
    } else if (_btm == true) {
      _index = _btmList.indexOf('');
      _switchIndex(_index);
      _sideNum.forEach((element) {
        _okList.add(_btmList[element]);
      });
      _okList.add(_cntList[_index]);
    }*/
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
                  onPressed: () {
                    _gameStart();
                  },
                  child: Text(
                    'Tap here',
                    style: TextStyle(fontSize: 30),
                  ),
                )),
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
                                onPressed: () {
                                  _changeNum(_numList[0][0]);
                                },
                                child: Text(
                                  _numList[0][0],
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
                                onPressed: () {
                                  _changeNum(_numList[0][1]);
                                },
                                child: Text(
                                  _numList[0][1],
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
                                onPressed: () {
                                  _changeNum(_numList[0][2]);
                                },
                                child: Text(
                                  _numList[0][2],
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
                                onPressed: () {
                                  _changeNum(_numList[1][0]);
                                },
                                child: Text(
                                  _numList[1][0],
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
                                onPressed: () {
                                  _changeNum(_numList[1][1]);
                                },
                                child: Text(
                                  _numList[1][1],
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
                                onPressed: () {
                                  _changeNum(_numList[1][2]);
                                },
                                child: Text(
                                  _numList[1][2],
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
                                onPressed: () {
                                  _changeNum(_numList[2][0]);
                                },
                                child: Text(
                                  _numList[2][0],
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
                                onPressed: () {
                                  _changeNum(_numList[2][1]);
                                },
                                child: Text(
                                  _numList[2][1],
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
                                onPressed: () {
                                  _changeNum(_numList[2][2]);
                                },
                                child: Text(
                                  _numList[2][2],
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
