import 'package:flutter/cupertino.dart';

class SearchViewProvider with ChangeNotifier {
  final TextEditingController searchContoller = TextEditingController();
  int? currentIndex = 0;
  void updateStateSearch() => notifyListeners();
}
