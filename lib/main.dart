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
  List<List<String>> _endList = [
    ['1', '2', '3'],
    ['4', '5', '6'],
    ['7', '8', '']
  ];
  int _emptyIndex;

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

  void _changeNum(num1, num2) {
    List<int> _sideIndexList = [];
    List<String> _okList = [];
    int i = 0;
    int n = 0;
    var tmp;
    _numList.forEach((_emptyElement) {
      if (_emptyElement.contains('')) {
        _emptyIndex = _emptyElement.indexOf('');

        switch (_emptyIndex) {
          case 0:
            _sideIndexList.add(1);
            break;
          case 1:
            _sideIndexList.add(0);
            _sideIndexList.add(2);
            break;
          case 2:
            _sideIndexList.add(1);
            break;
        }

        _numList.forEach((_verticalElement) {
          if ((_verticalElement == _emptyElement) == false && i == 1) {
            _okList.add(_verticalElement[_emptyIndex]);
          } else if ((_verticalElement == _emptyElement) == false && i == 0) {
            if (n != 2) {
              _okList.add(_verticalElement[_emptyIndex]);
            }
          } else if ((_verticalElement == _emptyElement) == false && i == 2) {
            if (n != 0) {
              _okList.add(_verticalElement[_emptyIndex]);
            }
          }
          n++;
        });

        _sideIndexList.forEach((_sideElement) {
          _okList.add(_emptyElement[_sideElement]);
        });

        setState(() {
          if (_okList.contains(_numList[num1][num2])) {
            tmp = _numList[num1][num2];
            _numList[num1][num2] = _emptyElement[_emptyIndex];
            _emptyElement[_emptyIndex] = tmp;
          }
        });
      }
      i++;
    });
    if (_numList.toString() == _endList.toString()){
      showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title :Text('おめでとう'),
            content: Text('ゲームクリア！'),
          )
      );
    }
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
                                  _changeNum(0, 0);
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
                                  _changeNum(0, 1);
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
                                  _changeNum(0, 2);
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
                                  _changeNum(1, 0);
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
                                  _changeNum(1, 1);
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
                                  _changeNum(1, 2);
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
                                  _changeNum(2, 0);
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
                                  _changeNum(2, 1);
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
                                  _changeNum(2, 2);
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
