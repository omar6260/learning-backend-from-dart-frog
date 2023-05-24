import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:web_socket_counter_flutter/counter/counter.dart';

void main() {
  group('CounterCubit', () {
    test('initial state is 0', () {
      expect(CounterCubit().state, (0));
    });

    blocTest<CounterCubit, int>(
      'emits [1] when increment is called',
      build: CounterCubit.new,
      act: (cubit) => cubit.increment(),
      expect: () => [(1)],
    );

    blocTest<CounterCubit, int>(
      'emits [-1] when decrement is called',
      build: CounterCubit.new,
      act: (cubit) => cubit.decrement(),
      expect: () => [(-1)],
    );
  });
}
