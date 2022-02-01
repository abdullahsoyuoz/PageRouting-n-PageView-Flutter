// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pageviewbuilder_architecture/Button/goToSetPageButton.dart';
import 'package:pageviewbuilder_architecture/MainPageView.dart';

import 'SettingsPage.dart';

class ProfilePage extends StatefulWidget {
  // REQUIRED
  MainPageViewState mainPageViewState;
  ProfilePage(this.mainPageViewState);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.95),
      body: Stack(
        children: [
          Center(
            child: Text(
              "Profile\nPage",
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w700),
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
                  title: "Go to SettingsPage",
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
