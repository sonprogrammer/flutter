import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 50),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/logo.png'),
                backgroundColor: Colors.black,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'sonprogrammer',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              width: 240,
              height: 5,
              color: Colors.red,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Linkify(
                onOpen: (link) async {
                  final Uri uri = Uri.parse(link.url);
                  if (!await launchUrl(
                    uri,
                    mode: LaunchMode.externalApplication, // 외부 브라우저로 열기
                  )) {
                    throw Exception('Could not launch $uri');
                  }
                },
                text: 'https://github.com/sonprogrammer/',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
                linkStyle: const TextStyle(
                  color: Colors.blueAccent, // 링크는 파란색 계열로 구분
                  decoration: TextDecoration.underline, // 밑줄 표시
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: (){}, 
                style: TextButton.styleFrom(backgroundColor: Colors.red, shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.edit,
                    color: Colors.white,
                    ),
                    SizedBox(width: 10,),
                    Text('프로필 수정하기',style: TextStyle(color: Colors.white),)
                    
                  ],
                )),
            )
          ],
        ),
      ),
    );
  }
}
