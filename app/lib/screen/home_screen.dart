import 'package:app/model/model_movie.dart';
import 'package:app/widget/box_slider.dart';
import 'package:app/widget/carousel_slider.dart';
import 'package:app/widget/circle_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'm1.png',
      'like': false,
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/',
      'poster': 'm1.png',
      'like': false,
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'm1.png',
      'like': false,
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'm1.png',
      'like': false,
    }),
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'm1.png',
      'like': false,
    }),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Stack(children: <Widget>[
        CarouselImage(movies: movies),
        TopBar()
      ],),
      CircleSlider(movies: movies),
      BoxSlider(movies: movies)
    ],);
  }
}

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset('./images/logo.png', fit: BoxFit.contain, height: 25),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text('TV프로그램', style: TextStyle(fontSize: 14)),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text('영화', style: TextStyle(fontSize: 14)),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text('내가 찜한 콘텐츠', style: TextStyle(fontSize: 14)),
          ),
        ],
      ),
    );
  }
}
