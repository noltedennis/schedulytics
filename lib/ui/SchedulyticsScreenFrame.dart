import 'package:flutter/material.dart';

import 'SchedulyticsAppBar.dart';
import 'SchedulyticsDrawer.dart';

class SchedulyticsScreenFrame extends StatelessWidget {
  final Widget body;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  SchedulyticsScreenFrame(this.body);

  // Using nested Scaffolds is not recommended, but for web
  // it is currently the only option not to overlay the AppBar with the Drawer
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: SchedulyticsAppBar(_scaffoldKey),
      body: Scaffold(
        key: _scaffoldKey,
        drawer: SchedulyticsDrawer(_scaffoldKey),
        body: body,
      ),
    );
  }
}
