import 'dart:math' as math;
import 'package:flutter/material.dart';

class My_Library extends StatefulWidget {
  const My_Library({Key? key}) : super(key: key);

  @override
  State<My_Library> createState() => _My_LibraryState();
}

class MyPlaylists {
  String title;
  String subtitle;

  MyPlaylists({required this.title, required this.subtitle});
}

class _My_LibraryState extends State<My_Library> {

  List<MyPlaylists> palaylists = [
    MyPlaylists(title: "Playlist 1", subtitle: 'test2'),
    MyPlaylists(title: "Playlist 2", subtitle: 'test2'),
    MyPlaylists(title: "Playlist 3", subtitle: 'test2'),
  ];

   Widget renderPlaylists(theList) {
    return ListView.builder(
      itemCount: theList.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(
            theList[index].title,
            style: const TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            theList[index].subtitle,
            style: const TextStyle(color: Colors.white38),
          ),
          leading: Image.network('https://via.placeholder.com/150'),
          onTap: () {
            print('Pressed $index');
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text(
          'Sua Biblioteca',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          // Navigate to the Search Screen
          IconButton(
            onPressed: () {}, 
          icon: const Icon(Icons.search)
          ),

          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              color: Colors.white)
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton.icon(
                onPressed: () {
                  print("Sort Button");
                },
                icon: Transform.rotate(
                  angle: -math.pi / 2,
                  child: const Icon(
                    Icons.compare_arrows,
                    color: Colors.white,
                  ),
                ),
                label: const Text(
                  'Mais recente',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
             
                Expanded(               
                  child: renderPlaylists(palaylists),
                )
                
          ],
        ),
      ),
    );
  }
}