import 'package:flutter/material.dart';
import 'package:spotify_clone/components/SmallCard.dart';

class CreateTwoTopCards extends StatelessWidget {
  const CreateTwoTopCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: const <Widget>[   
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: SmallCard(myText: 'Suas Curtidas', myAssetImagePath: 'assets/heart.png',)
        ),

         Padding(
          padding: EdgeInsets.only(left: 220),
          child:  SmallCard(myText: 'Suas Playlists', myAssetImagePath: 'assets/star.png',)  
        ),
       
      ],
    );
 
  }
}