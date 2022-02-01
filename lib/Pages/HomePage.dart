// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pageviewbuilder_architecture/Button/goToSetPageButton.dart';
import 'package:pageviewbuilder_architecture/MainPageView.dart';
import 'package:pageviewbuilder_architecture/Pages/SettingsPage.dart';

class HomePage extends StatefulWidget {
  MainPageViewState mainPageViewState;
  HomePage(this.mainPageViewState);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.95),
      body: Stack(
        children: [
          Center(
            child: Text(
              "Home\nPage",
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top * 1.5,
                  right: MediaQuery.of(context).padding.top * 0.5,
                ),
                child: GoButton(
                  title: "Go To Settings Page",
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => SettingsPage(),
                        ));
                  },
                )),
          ),
        ],
      ),
    );
  }
}
