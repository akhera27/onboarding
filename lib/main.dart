import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

//  final pageView = PageView(controller: PageController(initialPage: 1),
//    children: <Widget>[
//      swipeLeft(animation: "SwipeLeft",),
//      swipeLeft(animation: "Bookmark",),
//      swipeLeft(animation: "SwipeRight",),
//    ],);
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: swipeLeft() ,);
  }
}

class swipeLeft extends StatefulWidget {

  @override
  _swipeLeftState createState() => _swipeLeftState();
}

class _swipeLeftState extends State<swipeLeft> {

  String animation;
  int index;
  String title;
  List<Widget> pageList =[onboard("SwipeLeft", 1, "SwipeLeft to unlike")];


  @override
  Widget build(BuildContext context) {
    return Draggable(
        child: sample(),
        feedback: sample(),
      childWhenDragging: Container(),
    );
  }
  static Widget sample(){
    return SizedBox();
  }
  static Widget onboard(  String animation, int index, String title){
    return Card(color: Colors.deepPurple,
        child:Center(child: Transform.scale(scale: 1.75, child: FlareActor('assets/Onboarding.flr',
          animation:animation, )),));

  }
}





//Center(child: GestureDetector(
//onTap: () {
//setState(() {
//animation = "SwipeRight";
//});
//},
//onLongPress: () {
//setState(() {
//animation = "Bookmark";
//});
//} ,
//onDoubleTap: () {
//setState(() {
//animation = "SwipeLeft";
//});
//} ,
//child: Transform.scale(scale: 1.5, child: FlareActor('assets/Onboarding.flr',
//animation:animation, )),)),