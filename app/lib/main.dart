import 'package:flutter/material.dart';

void main() {
  //!앱시작해주세요 runapp안에 메인페이지 넣으면 됨
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('apasdfap'),),
        body: ShopItem()
      )
    
    );
  }
}



class ShopItem extends StatelessWidget {
  const ShopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text('data'),
    );
  }
}