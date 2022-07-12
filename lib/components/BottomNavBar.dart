import 'package:flutter/material.dart';
import 'package:spotify_clone/main.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key, required this.myIndex})
      : super(key: key);

  final int myIndex;
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(currentIndex: selectedIndex),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color.fromARGB(83, 0, 0, 0),
      selectedItemColor: Colors.greenAccent,
      unselectedItemColor: Colors.white,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Inicío",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Busca",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_books),
          label: "Sua biblioteca",
        ),
      ],
      onTap: _onItemTapped,
      currentIndex: widget.myIndex,
    );
  }
}