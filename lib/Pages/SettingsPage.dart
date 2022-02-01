// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pageviewbuilder_architecture/Controller/indexer.dart';
import 'package:pageviewbuilder_architecture/Button/goToSetPageButton.dart';
import 'package:pageviewbuilder_architecture/MainPageView.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage();

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.95),
      body: Stack(
        children: [
          Center(
            child: Text(
              "Settings\nPage",
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top * 1.5,
                left: MediaQuery.of(context).padding.top * 0.5,
              ),
              child: Column(
                children: [
                  GoButton(
                    title: "Go to last page",
                    onTap: () {
                      Navigator.pop(context, (route) => false);
                    },
                  ),
                  Divider(
                    color: Colors.yellow,
                  ),
                  GoButton(
                    title: "Go to HomePage",
                    onTap: () {
                      PageViewIndexer.instance.changer(0).whenComplete(() {
                        Navigator.pushAndRemoveUntil(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => MainPageView(),
                            ),
                            (route) => false);
                      });
                    },
                  ),
                  GoButton(
                    title: "Go to NotificationPage",
                    onTap: () {
                      PageViewIndexer.instance.changer(1).whenComplete(() {
                        Navigator.pushAndRemoveUntil(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => MainPageView(),
                            ),
                            (route) => false);
                      });
                    },
                  ),
                  GoButton(
                    title: "Go to ProfilePage",
                    onTap: () {
                      PageViewIndexer.instance.changer(2).whenComplete(() {
                        Navigator.pushAndRemoveUntil(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => MainPageView(),
                            ),
                            (route) => false);
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
