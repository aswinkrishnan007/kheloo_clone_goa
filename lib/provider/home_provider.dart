import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int _currentPage = 0;
  bool _showMore = false;

  int get currentPage => _currentPage;

  bool get showMore => _showMore;

  void updateCurrentPage(int index) {
    _currentPage = index;
    notifyListeners();
  }

  void toggleShowMore() {
    _showMore = !_showMore;
    notifyListeners();
  }
}
