import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_coconut_riverpod/app.dart';
import 'package:flutter_coconut_riverpod/flavors.dart';

void main() {
  setUpAll(() {
    try {
      F.appFlavor = Flavor.staging;
    } catch (_) {}
  });

  group('App widget', () {
    testWidgets('renders MaterialApp', (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(MaterialApp), findsOneWidget);
    });

    testWidgets('MaterialApp uses F.title as title', (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      final materialApp = tester.widget<MaterialApp>(find.byType(MaterialApp));
      expect(materialApp.title, F.title);
    });

    testWidgets('contains MyHomeScreen', (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(Scaffold), findsOneWidget);
    });

    testWidgets('shows flavor banner in debug mode', (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      await tester.pump();
      expect(find.byType(Banner), findsWidgets);
    });

    testWidgets('banner shows flavor name', (WidgetTester tester) async {
      await tester.pumpWidget(const App());
      await tester.pump();
      final banners = tester.widgetList<Banner>(find.byType(Banner));
      expect(banners.any((b) => b.message == F.name), isTrue);
    });
  });
}