import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CreateTopRightIcons extends StatelessWidget {
  const CreateTopRightIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   const iconsColor = Colors.white;
   
    return Stack(
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.notifications),
          color: iconsColor,
          iconSize: 30,
          onPressed: () {
            print("Notifications");
          },
        ),
        Padding(
           padding: const EdgeInsets.only(left: 40),
          child: IconButton(
            icon: const Icon(Icons.history_toggle_off),
            color: iconsColor,
            iconSize: 30,
            onPressed: () {
              print("History");
            },
          ),
        ),
        Padding(
           padding: const EdgeInsets.only(left: 81),
          child: IconButton(
            icon: const Icon(Icons.settings),
            color: iconsColor,
            iconSize: 30,
            onPressed: () {
              print("Settings");
            },
          ),
        ),
      ],
    );
    
  }
}