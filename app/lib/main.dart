import 'package:app/screen/home_screen.dart';
import 'package:app/screen/more_screen.dart';
import 'package:app/widget/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 비동기 초기화 전에 필요
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyABQz_ioUSRL-TcW6zQjobX6ZPNjfp7Ys4",
      appId: "1:138335808725:ios:241411cf158a62ed03465c",
      messagingSenderId: "138335808725",
      projectId: "neflix-clone-70a88",
      storageBucket: "neflix-clone-70a88.appspot.com",
    ),
  );
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
