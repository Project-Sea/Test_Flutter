import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // 이 위젯은 애플리케이션의 루트입니다.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // 이것은 애플리케이션의 테마입니다.
        primarySwatch: Colors.blue,
        // 이렇게 하면 앱을 실행하는 플랫폼에 시작적 밀도를 적용합니다.
        // 데스크탑 플랫폼의 경우, 제어장치는 모바일 플랫폼보다
        // 더 작고 더 가까워질 것 입니다.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  // 이 위젯은 애플리케이션의 홈 페이지입니다.
  // 홈 페이지는 'stateful'입니다.
  // 'stateful'이란 홈 페이지가 어떻게 보이는지에 영향을 미치는 필드를 포함하는
  // 상태 객체(아래에 정의됨)를 가지고 있다는 의미입니다.

  // 이 클래스는 상태를 위한 구성입니다.
  // 부모(이 경우에는 앱 위젯)가 제공하고 상태의 빌드 방법에 의해 사용되는 값
  // (이 경우에는 제목)을 보유합니다.
  // 위젯 하위 클래스의 필드는 항상 "final"로 표시됩니다.

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // setState에 대한 이 호출은 이 상태에서 무엇인가 변경되었다는 것을 Float
      // 프레임워크에 알려주고, 이로 인해 디스플레이가 업데이트된 값을 반영할 수
      // 있도록 하기 위해 아래의 build method을 재실행하게 됩니다.
      // setState()를 호출하지 않고 '_counter'를 변경하면 build method를 다시
      // 호출하지 않아 아무 일도 일어나지 않는 것처럼 보이게 됩니다.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // 이 method는 위의 '_incrementCounter' method와 같이 setState가 호출될 때
    // 마다 다시 실행됩니다.
    // Flutter 프레임워크는 build method를 빠르게 다시 실행하도록 최적화되어
    // 위젯 인스턴스를 개별적으로 변경하지 않고도 업데이트가 필요한 모든 항목을
    // 재구성할 수 있습니다.
    return Scaffold(
      appBar: AppBar(
        // 여기서 App.build method에 의해 생성된 MyHomePage 객체로부터 값을 가져
        // 와 AppBar 제목을 설정하는 데 사용한다.
        title: Text(widget.title),
      ),
      body: Center(
        // Center는 레이아웃 위젯입니다.
        // 한 개의 자식(child)을 부모(parent)의 가운데에 배치합니다.
        child: Column(
          // 열은 레이아웃 위젯입니다.
          // 열은 child의 목록을 세로로 배열해 가져갑니다.
          // 기본으로 child의 수평이 맞도록 크기를 조정하고
          // parent만큼 크려고 노력합니다.
          //
          // 열은 자신의 크기와 children의 위치를 조절하는 다양한 특성을 가지고
          // 있습니다.
          // 여기서 우리는 mainAxisAligment(축 정렬)를 사용해 children의 중심을
          // 수평으로 맞춘다.
          // 이곳의 중심 축은 기둥은 수직이기 때문에 수직 축이다(십자 축은 수평
          // 일 것이다).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // 이 후행 쉼표(,)는 build method에 대한 자동 포맷을 더 좋게 만듭니다.
    );
  }
}
