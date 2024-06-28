import 'package:flutter/material.dart';

const taxAmount = 15;
const priceAmount = 30;

var finalPrice = taxAmount + priceAmount; // 15+30 = 45

class StateStudyApp extends StatefulWidget {
  const StateStudyApp({super.key});

  @override
  State<StateStudyApp> createState() => _AppState();
}

class _AppState extends State<StateStudyApp> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  int counter = 0;
  List<int> numbers = [];

  void onClicked() {
    // counter++;
    setState(() {
      counter++; //구지 안에 안넣도 된다.. 가독성 문제
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? MyLargeTitle() : Text('nothing'),
              IconButton(
                  onPressed: toggleTitle, icon: Icon(Icons.remove_red_eye)),

              // STUDY1
              /* Text(
                'Click Count',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                '$counter',
                style: const TextStyle(fontSize: 30),
              ),
              for (var n in numbers) Text('$n'),
              IconButton(
                  iconSize: 40,
                  onPressed: onClicked,
                  icon: const Icon(Icons.add_box_rounded)),*/
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

// widgetLifeCycle initState -> build -> dispose
class _MyLargeTitleState extends State<MyLargeTitle> {
  int count = 0;

  @override
  void initState() {
    // 부모 요소에 의존하는 데이터를 초기화 해야하는 경우 사용
    // build 메서드 보다 먼저 호출 됨, 가끔 사용됨
    super.initState();
    print('initState!');
  }

  @override
  Widget build(BuildContext context) {
    print('build!');
    // buildContext 위젯 트리의 상위요소 데이터에 접근 가능하다.
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose!');
    // 해당 위젯이 위젯트리에서 제거되기 전 동작
  }
}
