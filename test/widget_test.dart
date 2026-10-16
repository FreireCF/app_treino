import 'package:flutter_test/flutter_test.dart';

import 'package:app_treino/main.dart';

void main() {
  testWidgets('Mostra os grupos musculares', (WidgetTester tester) async {
    await tester.pumpWidget(const PreviewApp());

    expect(find.text('Treinos'), findsOneWidget);
    expect(find.text('Peito'), findsOneWidget);
    expect(find.text('6 exercícios'), findsOneWidget);
  });
}
