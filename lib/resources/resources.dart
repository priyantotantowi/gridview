import 'color/color_id.dart';
import 'string/r_base.dart';
import 'string/r_id.dart';

class Resources {
  late RId string;
  ColorId color = ColorId();

  Resources(String locale) {
    string = RBase().getId(locale);
  }
}
