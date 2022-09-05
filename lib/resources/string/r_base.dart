import 'r_id.dart';
import 'r_lang_en.dart';
import 'r_lang_id.dart';

class RBase {
  RId getId(String locale) {
    if (locale == "en_US") {
      return RLangEn();
    } else {
      return RLangIdn();
    }
  }
}
