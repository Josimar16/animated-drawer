import 'package:app_base/src/modules/components/drawer_widget.dart';
import 'package:app_base/src/modules/components/header_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerWidget(),
          HeaderWidget(),
        ],
      ),
    );
  }
}
