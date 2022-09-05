import 'package:gridview/core/presenter.dart';
import 'package:gridview/model/stocks_model.dart';
import 'package:gridview/view/gridview_view.dart';

class GridViewPresenter extends Presenter {
  List<StocksModel> stocks = [
    StocksModel("APPL", 100, 4, 5, 0xFF000000, 0xFF808080,
        'assets/images/ic_apple.png'),
    StocksModel(
        "MCD", 200, 6, 5, 0xFFBF360C, 0xFFFF5722, 'assets/images/ic_mcd.png'),
    StocksModel("TWTR", 300, 6, 8, 0xFF303F9F, 0xFF5C6BC0,
        'assets/images/ic_twitter.png'),
    StocksModel(
        "NKE", 400, 4, 4, 0xFFFB8C00, 0xFFFFA726, 'assets/images/ic_nike.png'),
    StocksModel("PYPL", 500, 4, 4, 0xFF0091EA, 0xFF80D8FF,
        'assets/images/ic_paypal.png'),
    StocksModel("LYFT", 600, 10, 4, 0xFF9C27B0, 0xFFCE93D8,
        'assets/images/ic_lyft.png'),
    StocksModel("AMZN", 100, 4, 5, 0xFF000000, 0xFF808080,
        'assets/images/ic_amazon.png'),
    StocksModel("GOOG", 200, 6, 5, 0xFFBF360C, 0xFFFF5722,
        'assets/images/ic_google.png'),
    StocksModel("MSFT", 300, 6, 8, 0xFF303F9F, 0xFF5C6BC0,
        'assets/images/ic_microsoft.png'),
    StocksModel("LNKD", 400, 4, 4, 0xFFFB8C00, 0xFFFFA726,
        'assets/images/ic_linkedin.png'),
    StocksModel("META", 500, 4, 4, 0xFF0091EA, 0xFF80D8FF,
        'assets/images/ic_facebook.png'),
  ];
  @override
  void instance() {
    // TODO: implement instance
    setContentView(GridViewView());
  }
}
