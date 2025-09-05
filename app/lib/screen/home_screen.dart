import 'package:app/model/model_movie.dart';
import 'package:app/widget/box_slider.dart';
import 'package:app/widget/carousel_slider.dart';
import 'package:app/widget/circle_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late Stream<QuerySnapshot<Map<String, dynamic>>> streamData;



  @override
  void initState() {
    super.initState();
    streamData = firestore.collection('movie').snapshots();
  }

  Widget _fetchData(BuildContext context){
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: streamData,
      builder: (context, snapshot){
        if(!snapshot.hasData) return LinearProgressIndicator();
        return _buildBody(context, snapshot.data!.docs);
      },
    );
  }

  Widget _buildBody(BuildContext context, List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshot){
    List<Movie> movies = snapshot.map((d) => Movie.fromSnapshot(d)).toList();
    return ListView(children: <Widget>[
      Stack(children: <Widget>[
        CarouselImage(movies: movies),
        TopBar()
      ],),
      CircleSlider(movies: movies),
      BoxSlider(movies: movies)
    ],);
  }

  @override
  Widget build(BuildContext context) {
    return _fetchData(context);
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
