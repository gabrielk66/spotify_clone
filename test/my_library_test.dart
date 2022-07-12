import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:spotify_clone/pages/my_library.dart';

class PrepareWidgetForTest {
  Widget testApp({required Widget WidgetToBeRendered}) {
    return MaterialApp(
        home: Scaffold(body: SizedBox(child: WidgetToBeRendered)));
  }
}

void main() {
  group('My Library Page Test', () {
    testWidgets('My Library Test text and icons', (WidgetTester tester) async {
      mockNetworkImagesFor(() async {
        await tester.pumpWidget(PrepareWidgetForTest().testApp(WidgetToBeRendered: const My_Library()));

        expect(find.text('Sua Biblioteca'), findsOneWidget);
        expect(find.text('Playlist 1').first, findsOneWidget);
        expect(find.text('Playlist 2'), findsOneWidget);

        expect(find.byIcon(Icons.compare_arrows), findsOneWidget);
        expect(find.byIcon(Icons.add), findsOneWidget);
        expect(find.byIcon(Icons.search), findsOneWidget);

      });
    });

      testWidgets('My Library Test 2 | Count how manny ListTiles exist', (WidgetTester tester) async {
      mockNetworkImagesFor(() async {

      await tester.pumpWidget(PrepareWidgetForTest().testApp(WidgetToBeRendered: const My_Library()));
      expect(find.byType(ListTile), findsNWidgets(3));
    
      });
    });

  });
}
