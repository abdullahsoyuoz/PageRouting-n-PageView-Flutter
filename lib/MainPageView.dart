import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pageviewbuilder_architecture/Controller/indexer.dart';
import 'package:pageviewbuilder_architecture/Pages/HomePage.dart';
import 'package:pageviewbuilder_architecture/Pages/NotificationPage.dart';
import 'package:pageviewbuilder_architecture/Pages/ProfilePage.dart';

class MainPageView extends StatefulWidget {
  @override
  MainPageViewState createState() => MainPageViewState();
}

class MainPageViewState extends State<MainPageView> {
  PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: PageViewIndexer.instance.lastIndex, keepPage: false, viewportFraction: 1);
  }
  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> bottomNavBarItems = [
      BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.home), label: "Home"),
      BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.solidBell), label: "Notification"),
      BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.solidUser), label: "Profile"),
    ];
    List pages = [
      HomePage(this),
      NotificationPage(this),
      ProfilePage(this),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            pageController.animateToPage(value,
                duration: Duration(milliseconds: 500),
                curve: Curves.elasticOut);
          });
        },
        items: bottomNavBarItems,
        backgroundColor: Colors.white.withOpacity(.05),
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey.shade900,
        currentIndex: PageViewIndexer.instance.lastIndex,
        selectedFontSize: 0,
        unselectedFontSize: 0,
      ),
      body: PageView.builder(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        itemCount: pages.length,
        itemBuilder: (context, index) => pages[index],
        onPageChanged: (value) {
          setState(() {
            PageViewIndexer.instance.lastIndex = value;
          });
        },
      ),
    );
  }
}

