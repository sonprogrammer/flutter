import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    print('screenWidth: $screenWidth');
    print('screenHeight: $screenHeight');
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('기본 위젯'), backgroundColor: Colors.blue),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
              width: screenWidth * 0.7,
              height: screenHeight,
              color: Colors.amber,
              ),
            ),
            
          ],
        ),
        // body: Container(
        //   width: double.infinity,
        //   height: 400,
        //   color: Colors.blue[100],
        //   // margin: EdgeInsets.all(30),
        //   // padding: EdgeInsets.all(100),
        //   // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.end,
        //     crossAxisAlignment: CrossAxisAlignment.end,
        //     mainAxisSize: MainAxisSize.max,
        //     children: [
        //       FlutterLogo(
        //         size: 50,
        //       ),
        //       FlutterLogo(
        //         size: 50,
        //       ),
        //       FlutterLogo(
        //         size: 50,
        //       ),
        //     ],
        //   )
        // )
      ),
    );
  }
}
