import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:spotify_clone/components/createMultipleCards.dart';
import 'package:spotify_clone/pages/search_page.dart';

class PrepareWidgetForTest {
  Widget testApp({required Widget WidgetToBeRendered}) {
    return MaterialApp(
        home: Scaffold(body: SizedBox(child: WidgetToBeRendered)));
  }
}

void main() {
  group('Search Page Test', () {
    testWidgets('Search Page check if input field exist ',
        (WidgetTester tester) async {
      mockNetworkImagesFor(() async {
        await tester.pumpWidget(PrepareWidgetForTest()
            .testApp(WidgetToBeRendered: const Search_Page()));

        expect(find.byType(TextField), findsOneWidget);
      });
    });

    testWidgets('Search Page check if Genre cards exist ',
        (WidgetTester tester) async {
      mockNetworkImagesFor(() async {
        await tester.pumpWidget(PrepareWidgetForTest().testApp(WidgetToBeRendered: const Search_Page()));
        
        expect(find.byType(InkWell), findsNWidgets(6));
      });
    });
  });
}
