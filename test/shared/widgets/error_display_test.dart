// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:kagi_demo/shared/widgets/error_display.dart';

void main() {
  group('ErrorDisplay Widget Tests', () {
    testWidgets('should display the default error message', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: ErrorDisplay())),
      );

      expect(
        find.text('Something went wrong. Please try again later.'),
        findsOneWidget,
      );
      expect(find.byType(ElevatedButton), findsNothing);
    });

    testWidgets('should display a custom error message', (tester) async {
      const customMessage = 'Custom error occurred.';
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: ErrorDisplay(errorMessage: customMessage)),
        ),
      );

      expect(find.text(customMessage), findsOneWidget);
    });

    testWidgets('should display retry button when onRetry is provided', (
      tester,
    ) async {
      var retryCalled = false;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ErrorDisplay(
              errorMessage: 'Failed to load data.',
              onRetry: () {
                retryCalled = true;
              },
            ),
          ),
        ),
      );

      expect(find.text('Failed to load data.'), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);

      await tester.tap(find.text('Try Again'));
      await tester.pump();

      expect(retryCalled, true);
    });
  });
}
