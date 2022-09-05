import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../widget.dart';
import 'view.dart';

abstract class Presenter extends State<LinkWidget> {
  late View view;
  late Widget myWidget;

  Presenter() {}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    instance();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // executes after build
      viewLoaded();
    });
    return myWidget;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    viewDestroyed();
  }

  void setContentView(View view) {
    this.view = view;
    myWidget = view.viewDidLoad(this);
  }

  void instance();

  void viewLoaded() {}

  void viewDestroyed() {}

  void close<T extends Object?>(BuildContext context, [T? result]) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context, result);
    } else {
      SystemNavigator.pop();
    }
  }
}
