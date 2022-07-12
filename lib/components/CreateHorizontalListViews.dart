import 'dart:math';

import 'package:flutter/material.dart';

class CreateHorizontalListViews extends StatefulWidget {
  const CreateHorizontalListViews({Key? key, required this.list}) : super(key: key);

   final List<String> list;

  @override
  State<CreateHorizontalListViews> createState() => _CreateHorizontalListViewsState();
}

class _CreateHorizontalListViewsState extends State<CreateHorizontalListViews> {

  static const subtitlesStyle =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
  
    String errorImageURL = 'https://via.placeholder.com/600x400.png?text=Error';
  
    return Flexible(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.list.length ,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 150,
              height: 150,
              child: Card(
                  child: Stack(
                    alignment: Alignment.bottomCenter, 
                    children: [
                Ink.image(
                   colorFilter: 
                    ColorFilter.mode(
                    Colors.primaries[Random().nextInt(Colors.primaries.length)].withOpacity(0.5),
                     BlendMode.overlay
                    ),
                  image: const NetworkImage('https://via.placeholder.com/150'),
                  fit: BoxFit.fill,
                  child: InkWell(
                    onTap: () {
                      print("Clicked ${widget.list[index] }");
                    },
                  ),
                ),
                Text('${widget.list[index] }', 
                style: subtitlesStyle
                )
              ])),
            );
          }),
    );
  }
}