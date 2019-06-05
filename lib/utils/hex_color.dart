import 'package:flutter/painting.dart';

class HexColor extends Color {
  static _hexToColor(String code) {
    return int.parse(code.substring(1, 7), radix: 16) + 0xFF000000;
  }

  HexColor(final String code) : super(_hexToColor(code));
}
