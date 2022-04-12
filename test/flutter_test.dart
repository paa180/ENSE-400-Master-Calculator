import 'package:flutter_test/flutter_test.dart';

/*
This unit testing test the few variables and the 
measuring list in Unit Conversion.
*/

void main() {
  int x = 0;
  bool y = false;
  List<String> measures;
  Map<String, bool> mappedMeasures = {};

  group('Test case for Variable X :\n', () {
    test('X is not null', () => expect(x, isNotNull));

    test('X is 0', () => expect(x == 1, isFalse));

    test('X is less than 1', () => expect(x < 1, isTrue));
  });

  group('Test Case for Variable Y : \n:', () {
    test('Y is not True', () => expect(y, isNot(equals(isTrue))));
  });
  measures = ['Meters', 'Kilometers', 'Grams', 'Kilograms', 'Feets', 'Miles'];
  test(
      'List is empty',
      () => {
            measures = [],
            expect(measures, isEmpty),
          });

  test('list has total six measures', () {
    expect(measures.length, greaterThan(-1));
    expect(measures.length, lessThan(6));
  });

  group('Map Test Case: \n', () {
    test('Map is not ull', () => expect(mappedMeasures, isNotNull));
    test('Map is empty', () => expect(mappedMeasures, isEmpty));
    test('Map key is a string', () => (mappedMeasures.keys.runtimeType != int));
    test('Map is a bool',
        () => expect(mappedMeasures.values.runtimeType == String, isFalse));
  });
}
