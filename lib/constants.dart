import 'package:flutter/material.dart';

const Map<int, String> monthMap = {
  1: 'January',
  2: 'February',
  3: 'March',
  4: 'April',
  5: 'May',
  6: 'June',
  7: 'July',
  8: 'August',
  9: 'September',
  10: 'October',
  11: 'November',
  12: 'December',
};
final month = monthMap[DateTime.now().month];
const kChaos = Text('Chaos.',
    style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
        letterSpacing: -4,
        height: 1,
        color: Color(0xff010b13)));
