import 'package:app/screen/home_screen.dart';
import 'package:app/screen/more_screen.dart';
import 'package:app/widget/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  //!앱시작해주세요 runapp안에 메인페이지 넣으면 됨
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BbongFlix',
      theme: ThemeData(brightness: Brightness.dark, primaryColor: Colors.black),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              HomeScreen(),
              // Container(child: Center(child: Text('home'),),), 
              Container(child: Center(child: Text('search'),),), 
              Container(child: Center(child: Text('save'),),), 
              MoreScreen()
              ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
