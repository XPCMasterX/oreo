import 'dart:ui';
import 'dart:math';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "ff" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

/*
 * Generates a random Hex that is six letters long
 */
String generateRandomColor() {
  List<dynamic> numbers = <dynamic>[];
  List<String> hex = <String>[
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    'A',
    'B',
    'C',
    'D',
    'E',
    'F'
  ];
  var rng = Random();
  for (var i = 0; i < 6; i++) {
    numbers.add(hex[rng.nextInt(16)]);
    print(hex[rng.nextInt(16)]);
  }
  return numbers.join();
}
