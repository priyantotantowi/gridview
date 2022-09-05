import 'package:flutter/widgets.dart';
import 'package:gridview/core/presenter.dart';

import '../env.dart';
import '../resources/resources.dart';

abstract class View<T extends Presenter> {
  late Resources R;

  View() {
    R = Resources(Env.locale);
  }

  Widget viewDidLoad(T state);

  updateLocale(String locale) {
    R = Resources(Env.locale);
  }
}
