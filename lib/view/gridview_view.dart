import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gridview/core/view.dart';
import 'package:gridview/model/stocks_model.dart';
import 'package:gridview/presenter/gridview_presenter.dart';

class GridViewView extends View<GridViewPresenter> {
  @override
  Widget viewDidLoad(GridViewPresenter state) {
    // TODO: implement viewDidLoad
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Browse Stocks',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: StaggeredGrid.count(
                    crossAxisCount: 10,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    axisDirection: AxisDirection.down,
                    children: [for (var data in state.stocks) _tile(data)],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _tile(StocksModel stocksModel) {
  return StaggeredGridTile.count(
    crossAxisCellCount: stocksModel.cross,
    mainAxisCellCount: stocksModel.main,
    child: Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: const [0.3, 1],
          colors: <Color>[Color(stocksModel.color1), Color(stocksModel.color2)],
        ),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            stocksModel.image,
            height: 28,
            color: Colors.white,
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            stocksModel.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '\$ ${stocksModel.value.toString()}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
