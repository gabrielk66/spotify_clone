import 'package:flutter/material.dart';
import 'package:spotify_clone/components/BottomNavBar.dart';
import 'package:spotify_clone/pages/home_page.dart';
import 'package:spotify_clone/pages/my_library.dart';
import 'package:spotify_clone/pages/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(currentIndex: 0),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.currentIndex}) : super(key: key);

  final int currentIndex;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  static const List<Widget> pages = [

    Home_Page(),
    Search_Page(),
    My_Library()
    
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.5, 0),
            colors: [Colors.indigo, Colors.black54]
          )
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: pages.elementAt(widget.currentIndex),
        bottomNavigationBar: BottomNavBar(myIndex: widget.currentIndex),
      ),
    );
  }
}
