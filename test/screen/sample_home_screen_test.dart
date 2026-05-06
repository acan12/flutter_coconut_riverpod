import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_coconut_riverpod/screen/sample_home_screen.dart';
import 'package:flutter_coconut_riverpod/flavors.dart';

void main() {
  setUpAll(() {
    try {
      F.appFlavor = Flavor.staging;
    } catch (_) {}
  });

  group('MyHomeScreen', () {
    testWidgets('renders Scaffold', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SampleHomeScreen()));
      expect(find.byType(Scaffold), findsOneWidget);
    });

    testWidgets('has AppBar with flavor title', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SampleHomeScreen()));
      expect(find.byType(AppBar), findsOneWidget);
      expect(find.text(F.title), findsOneWidget);
    });

    testWidgets('has BottomNavigationBar', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SampleHomeScreen()));
      expect(find.byType(BottomNavigationBar), findsOneWidget);
    });

    testWidgets('BottomNavigationBar has Call label', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SampleHomeScreen()));
      expect(find.text('Call'), findsOneWidget);
    });

    testWidgets('BottomNavigationBar has Camera label', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SampleHomeScreen()));
      expect(find.text('Camera'), findsOneWidget);
    });

    testWidgets('BottomNavigationBar has Chat label', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SampleHomeScreen()));
      expect(find.text('Chat'), findsOneWidget);
    });

    testWidgets('default page shows Call icon in body', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SampleHomeScreen()));
      final callIcons = tester.widgetList<Icon>(find.byIcon(Icons.call));
      expect(callIcons.any((icon) => icon.size == 200), isTrue);
    });

    testWidgets('tapping Camera tab shows Camera icon in body', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SampleHomeScreen()));
      await tester.tap(find.text('Camera'));
      await tester.pump();
      final cameraIcons = tester.widgetList<Icon>(find.byIcon(Icons.camera));
      expect(cameraIcons.any((icon) => icon.size == 200), isTrue);
    });

    testWidgets('tapping Chat tab shows Chat icon in body', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SampleHomeScreen()));
      await tester.tap(find.text('Chat'));
      await tester.pump();
      final chatIcons = tester.widgetList<Icon>(find.byIcon(Icons.chat));
      expect(chatIcons.any((icon) => icon.size == 200), isTrue);
    });

    testWidgets('tapping back to Call tab shows Call icon in body', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SampleHomeScreen()));
      await tester.tap(find.text('Camera'));
      await tester.pump();
      await tester.tap(find.text('Call'));
      await tester.pump();
      final callIcons = tester.widgetList<Icon>(find.byIcon(Icons.call));
      expect(callIcons.any((icon) => icon.size == 200), isTrue);
    });

    testWidgets('body contains Center widget', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: SampleHomeScreen()));
      expect(find.byType(Center), findsWidgets);
    });
  });
}