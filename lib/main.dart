import 'package:flutter/material.dart';
import 'package:untitled/screens/webtoon_home_screen.dart';
import 'package:untitled/service/api_service.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WebToonHomeScreen(),
    );
  }
}
