import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project Sea',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF3C63D9),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _onFloatingButton = true;
  var _onNotch = true;
  var _FloatingButtonLocation = FloatingActionButtonLocation.endDocked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Sea'),
      ),
      body: new Container(
        color: Color(0xFFFFFFFF),
        padding: const EdgeInsets.all(3),
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Test 1',
                  style: TextStyle(fontSize: 20, color: Color(0xFF000000)),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  'Test 2',
                  style: TextStyle(fontSize: 30, color: Color(0xFF000000)),
                ),
              ],
            ),
            new SwitchListTile(
              title: const Text('플로팅 작업 버튼'),
              value: _onFloatingButton,
              onChanged: (bool value) {
                setState(() {
                  _onFloatingButton = value;
                });
              },
            ),
            new SwitchListTile(
                title: Text('노치'),
                value: _onNotch,
                onChanged: (bool value) {
                  setState(() {
                    _onNotch = value;
                  });
                }),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                '플로팅 작업 버튼 위치',
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
            ),
            new RadioListTile<FloatingActionButtonLocation>(
              title: Text('도킹됨-끝'),
              value: FloatingActionButtonLocation.endDocked,
              groupValue: _FloatingButtonLocation,
              onChanged: (FloatingActionButtonLocation value) {
                setState(() {
                  _FloatingButtonLocation = value;
                });
              },
            ),
            new RadioListTile<FloatingActionButtonLocation>(
              title: Text('도킹됨-중앙'),
              value: FloatingActionButtonLocation.centerDocked,
              groupValue: _FloatingButtonLocation,
              onChanged: (FloatingActionButtonLocation value) {
                setState(() {
                  _FloatingButtonLocation = value;
                });
              },
            ),
            new RadioListTile<FloatingActionButtonLocation>(
              title: Text('플로팅-끝'),
              value: FloatingActionButtonLocation.endFloat,
              groupValue: _FloatingButtonLocation,
              onChanged: (FloatingActionButtonLocation value) {
                setState(() {
                  _FloatingButtonLocation = value;
                });
              },
            ),
            new RadioListTile<FloatingActionButtonLocation>(
              title: Text('플로팅-중앙'),
              value: FloatingActionButtonLocation.centerFloat,
              groupValue: _FloatingButtonLocation,
              onChanged: (FloatingActionButtonLocation value) {
                setState(() {
                  _FloatingButtonLocation = value;
                });
              },
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
              backgroundColor: Colors.red,
            ),
            BottomNavigationBar: _DemoBottomAppBar(
              FABLocation: _FloatingButtonLocation,
              shape: _onNotch ? const CircularNotchedRectangle() : null,
            ),
          ],
        ),
      ),
    );
  }
}
