import 'package:flutter/material.dart';
import 'package:bazar/ui/home/anim.dart';
import 'package:bazar/ui/feed/feed.dart';
import 'package:bazar/ui/search/search.dart';
import 'package:bazar/ui/services/services.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomePageState();
  }
}


class _HomePageState extends State<HomePage> {

  PageController _pageController;
  String _title = "Raian Health";

  /// Indicating the current displayed page
  /// 0: feed
  /// 1: search
  /// 2: services
  /// 3: messages
  /// 4: account & notifications
  int _page = 0;

  var _pageTitles = [
    "Feed", "Search", "Services", "Messages", "Account"
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(_title),),
      body: new PageView(
        children: [
          new FeedPage(),
          new SearchPage(),
//          new AnimPage(),
          new ServicesPage(),
          new Container(color: Colors.cyan),
          new Container(color: Colors.orange),
        ],
        controller: _pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: new BottomNavigationBar(
//        fixedColor: Colors.blue,
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.rss_feed),
            title: new Text("feed"),
            backgroundColor: Colors.blue,
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.search),
            title: new Text("search"),
            backgroundColor: Colors.blue,
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.add),
            title: new Text("services"),
            backgroundColor: Colors.blue,
          ),
          new BottomNavigationBarItem(
            icon: new Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                new Icon(Icons.message),
                new Positioned(
                  top: -8.0,
                  right: -8.0,
                  child: new CircleAvatar(
                    maxRadius: 10.0,
                    child: new Text(
                      "2",
                      style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
            title: new Text("messages"),
            backgroundColor: Colors.blue,
          ),
          new BottomNavigationBarItem(
            icon: new Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                new Icon(Icons.account_circle),
                new Positioned(
                  top: -8.0,
                  right: -8.0,
                  child: new CircleAvatar(
                    maxRadius: 10.0,
                    child: new Text(
                      "8",
                      style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.orange,
                  ),
                ),
              ],
            ),
            title: new Text("account"),
            backgroundColor: Colors.blue,
          ),
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
  }

  void onPageChanged(int page){
    setState((){
      this._page = page;
      this._title = this._pageTitles[this._page];
    });
  }

  /// Called when the user presses on of the
  /// [BottomNavigationBarItem] with corresponding
  /// page index
  void navigationTapped(int page){
    // Animating to the page.
    // You can use whatever duration and curve you like
    _pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease
    );
  }

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}