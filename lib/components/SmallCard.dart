import 'package:flutter/material.dart';

class SmallCard extends StatefulWidget {
  const SmallCard(
      {Key? key, required this.myText, required this.myAssetImagePath})
      : super(key: key);
  final String myText;
  final String myAssetImagePath;

  @override
  State<SmallCard> createState() => _SmallCardState();
}

class _SmallCardState extends State<SmallCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        print(widget.myText)
        },
      child: Card(
        child: Container(
            color: Colors.black54,
            height: 50,
            width: 150,
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 10,
                  child: Ink.image(
                    image: AssetImage(widget.myAssetImagePath),
                    width: 30,
                    height: 30,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 45, top: 15),
                    child: Text(widget.myText),
                ),
              ],
            )),
      ),
    );
  }
}
