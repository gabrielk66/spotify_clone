import 'dart:math';
import 'package:flutter/material.dart';

class CreateMultipleCards extends StatelessWidget {
  const CreateMultipleCards({Key? key, required this.allList})
      : super(key: key);
  final dynamic allList;

  @override
  Widget build(BuildContext context) {

    String errorImageURL = 'https://via.placeholder.com/600x400.png?text=Error';

    return SizedBox(
      height: 500,
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: (1 / .5),
        ),
        itemCount: allList?.length ?? 1,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              print("Clicked ${allList?[index].name?? 'Error null list'}");
            },
            child: Container(
              color:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
              height: 100,
              width: 150,
              child: Stack(
                children: [
                  Positioned(
                    right: 1,
                    child: Image.network(
                      allList?[index]?.image?? errorImageURL,
                      fit: BoxFit.cover,
                      height: 100,
                      width: 80,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Text(
                      allList?[index]?.name?? 'Error',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
