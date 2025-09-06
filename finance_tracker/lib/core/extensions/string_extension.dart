import 'dart:ui';

extension StringExtension on String {
  Color hexToColor(String hexCode) {
    final hex = hexCode.replaceAll('#', '');
    return Color(int.parse('FF$hex', radix: 16));
  }
}
