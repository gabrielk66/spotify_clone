import 'dart:math';
import 'package:flutter/material.dart';

class CreateFavoriteGenreCards extends StatelessWidget {
  const CreateFavoriteGenreCards({Key? key, required this.favoriteList }) : super(key: key);

  final List<dynamic> favoriteList;
  
  @override
  Widget build(BuildContext context) {
    
    String errorImageURL = 'https://via.placeholder.com/600x400.png?text=Error';

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: (){
              print("Clicked ${favoriteList[0]?.name ?? 'Error'}");
            },
            child: Container(
              color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
              height: 100,
              width: 180,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Text(
                      favoriteList[0].name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 1,
                    child: Image.network(
                      favoriteList[1]?.image ?? errorImageURL,
                      fit: BoxFit.cover,
                      height: 100,
                      width: 80,
                    ),
                  ),
                ],
              ),
            ),
          ),

          InkWell(
            onTap: (){
                print("Clicked ${favoriteList[1]?.name ?? 'Error'}");
            },
            child: Container(
              color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
              height: 100,
              width: 180,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Text(
                      favoriteList[1].name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 1,
                    child: Image.network(
                      favoriteList[1]?.image ?? errorImageURL,
                      fit: BoxFit.cover,
                      height: 100,
                      width: 80,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    
  }
}