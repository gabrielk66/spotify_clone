import 'package:flutter/material.dart';
import 'package:spotify_clone/components/CreateFavoriteGenreCards.dart';
import 'package:spotify_clone/components/CreateMultipleCards.dart';
import 'package:spotify_clone/components/SearchInput.dart';

class Search_Page extends StatefulWidget {
  const Search_Page({Key? key, tete}) : super(key: key);
  final dynamic tete = null;

  @override
  State<Search_Page> createState() => _Search_PageState();

}

class Genre {
  String name;
  dynamic image;

  Genre({required this.name, required this.image});
}


class _Search_PageState extends State<Search_Page> {

  List<Genre> favoriteGenre = [
    Genre(name: "Rock", image: "https://via.placeholder.com/150"),
    Genre(name: "Pop", image: "https://via.placeholder.com/150"),
  ];

  List<Genre> allGenre = [
    Genre(name: "Novos", image: "https://via.placeholder.com/150"),
    Genre(name: "Brasil", image: "https://via.placeholder.com/150"),
    Genre(name: "Em alta", image: "https://via.placeholder.com/150"),
    Genre(name: "Foco", image: "https://via.placeholder.com/150"),
    Genre(name: "Especiais", image: "https://via.placeholder.com/150"),
    Genre(name: "Indie", image: "https://via.placeholder.com/150"),
  ];

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        const Padding(
          padding: EdgeInsets.only(top: 50, left: 10),
          child: Text('Buscar', style: style),
        ),

        const SizedBox(height: 20),

        const Padding(
          padding: EdgeInsets.all(8.0),
          child: SearchInput(),
        ),

        const Padding(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Text('Seus gêneros favoritos', style: style),
        ),

        const SizedBox(height: 20),

        CreateFavoriteGenreCards(favoriteList: favoriteGenre),

        const SizedBox(height: 20),

        const Padding(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Text('Navegar por todas as seções', style: style),
        ),
        const SizedBox(height: 10),

        Expanded(
          child: CreateMultipleCards(allList: allGenre),
        )
      ],
    );
  }
}
