import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:spotify_clone/components/CreateHorizontalListViews.dart';
import 'package:spotify_clone/components/CreateTwoTopCards.dart';
import 'package:spotify_clone/pages/home_page.dart';

class PrepareWidgetForTest {
  Widget testApp({required Widget WidgetToBeRendered}) {
    return MaterialApp(
        home: Scaffold(body: SizedBox(child: WidgetToBeRendered)));
  }
}

void main() {
  group('Home Page Test', () {
    testWidgets('Home page Test text and icons', (WidgetTester tester) async {
 
      mockNetworkImagesFor(() async {
        await tester.pumpWidget(PrepareWidgetForTest().testApp(WidgetToBeRendered: const Home_Page()));
  
        expect(find.text('Boa Noite'), findsOneWidget);
        expect(find.text('Tocados recentemente'), findsOneWidget);
        expect(find.text('ZXCASD'), findsNothing);

        expect(find.byIcon(Icons.notifications), findsOneWidget);
        expect(find.byIcon(Icons.history_toggle_off), findsOneWidget);
        expect(find.byIcon(Icons.settings), findsOneWidget);

        expect(find.byIcon(Icons.delete), findsNothing);

      });

    });

    testWidgets(
        'Widget Test - Checking if HorizontalListViews are creating the items',
        (WidgetTester tester) async {
      final List<String> mockedlist = <String>[
        'Mocked Item',
        'Mocked Item 1',
        'Mocked Item 2',
        'Mocked Item 3',
        'Mocked Item 4',
      ];

      mockNetworkImagesFor(() async {
        await tester.pumpWidget(PrepareWidgetForTest().testApp(WidgetToBeRendered: 
        Column(children: [
          CreateHorizontalListViews(
            list: mockedlist,
          ),
        ])));
  
        expect(find.text('Mocked Item 3'), findsOneWidget); 
        expect(find.text('Mocked Item'), findsOneWidget);

      });
    });

    testWidgets('Widget Test - Checking if TwoTopCards are rendered', (WidgetTester tester) async {
      mockNetworkImagesFor(() async {
        await tester.pumpWidget(PrepareWidgetForTest().testApp(WidgetToBeRendered: const CreateTwoTopCards()));

        expect(find.text('Suas Curtidas'), findsOneWidget);
        expect(find.text('Suas Playlists'), findsOneWidget);
      });
    });
  });
}
