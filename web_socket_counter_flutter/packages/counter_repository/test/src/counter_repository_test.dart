// ignore_for_file: prefer_const_constructors
import 'package:counter_repository/counter_repository.dart';
import 'package:test/test.dart';

void main() {
  group('CounterRepository', () {
    test('can be instantiated', () {
      expect(CounterRepository(), isNotNull);
    });
  });
}
