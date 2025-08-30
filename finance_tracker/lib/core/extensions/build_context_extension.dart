
import '../../exports.dart';

extension BuildContextExt on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);

  double get w => mq.size.width;

  double get h => mq.size.height;

  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  // ThemeColors get color => Theme.of(this).extension<ThemeColors>()!;
  //
  // ThemeTextStyles get textStyle => Theme.of(this).extension<ThemeTextStyles>()!;
}
