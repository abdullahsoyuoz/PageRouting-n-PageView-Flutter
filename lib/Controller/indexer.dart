class PageViewIndexer {
  static final PageViewIndexer instance = PageViewIndexer._internal();
  factory PageViewIndexer() => instance;
  PageViewIndexer._internal();
  int lastIndex = 0;
  Future<void> changer(int index) async {
    lastIndex = index;
  }
}
