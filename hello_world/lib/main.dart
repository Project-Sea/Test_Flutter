import 'package:flutter/material.dart';
import 'package:hello_world/bottomAppBar.dart';

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
      home: MyHomePage(title: 'Project Sea Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  // final void Function(String value) showInSnackBar;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _showFab = true;
  var _showNotch = true;
  var _fabLocation = FloatingActionButtonLocation.endDocked;

  void _onShowNotchChacnged(bool value) {
    setState(() {
      _showNotch = value;
    });
  }

  void _onShowFabChanged(bool value) {
    setState(() {
      _showFab = value;
    });
  }

  void _onFabLocationChanged(FloatingActionButtonLocation value) {
    setState(() {
      _fabLocation = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: Icon(Icons.cake),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.message),
            tooltip: "Check Issue",
            onPressed: () => {},
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFFFFFFF),
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "1st Line",
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF000000),
                  fontFamily: "Consolas"),
            ),
            Text(
              "2nd Line",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFFFF0000),
                  fontFamily: "Consolas"),
            ),
            floaingActionButton: _showFab
                ? FloatingActionButton(
                  onPressed: () {
                    print('Floating action button pressed');
                  },
                  child: const Icon(Icons.add),
                ),
                : null,
            floatingActionButtonLocation: _fabLocation,
            bottomNavigationBar: _DemoBottomAppBar(
              fabLocation: _fabLocation,
              shape: _showFab ? const CircularNotchedRectangle() : null,
            ),
          ],
        ),
      ),
    );
  }
}
