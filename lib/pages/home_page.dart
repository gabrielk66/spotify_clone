import 'package:flutter/material.dart';
import 'package:spotify_clone/components/CreateTopRightIcons.dart';
import 'package:spotify_clone/components/CreateHorizontalListViews.dart';
import 'package:spotify_clone/components/CreateTwoTopCards.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  static const titlesStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);

  final List<String> dummyList = <String>['A', 'B', 'C', 'D', 'E'];

  final List<String> dummyMadeForYou = <String>[
    'Daily Mix',
    'Semanal',
    'Mensal',
    'Anual',
    'Seus gostos'
  ];

  final List<String> dummyRecent = <String>[
    'Músicas Curtidas',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
  ];

  final List<String> dummySuggestion = <String>[
    'Banda',
    'Banda 1',
    'Banda 2',
    'Banda 3',
    'Banda 4',
  ];
 
  Widget createTitle(title) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        title,
        style: titlesStyle,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Stack(
                children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 12),
                  child: Text(
                    'Boa Noite',
                    style: titlesStyle,
                  ),
                ),

                  Padding(
                  padding: EdgeInsets.only(left: 220),
                  child: CreateTopRightIcons(),
                ),
                    
              ]),
            ),
            const CreateTwoTopCards(),
            const SizedBox(height: 25),
            createTitle('Seus mixes mais ouvidos'),
            const SizedBox(height: 10),
            CreateHorizontalListViews(list: dummyList),
            const SizedBox(height: 25),
            createTitle('Feito para Você'),
            const SizedBox(height: 10),
            CreateHorizontalListViews(list: dummyMadeForYou),
            const SizedBox(height: 25),
            createTitle('Tocados recentemente'),
            const SizedBox(height: 10),
            CreateHorizontalListViews(list: dummyRecent),
            const SizedBox(height: 25),
            createTitle('Recomendado para hoje'),
            const SizedBox(height: 10),
            CreateHorizontalListViews(list: dummySuggestion),
          ],
        ),
      ),
    );
  }
}
