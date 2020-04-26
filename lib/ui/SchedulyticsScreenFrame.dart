import 'package:flutter/material.dart';

import 'SchedulyticsRoutes.dart';

class SchedulyticsScreenFrame extends StatelessWidget {
  final Widget body;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final _routes = SchedulyticsRoutes();

  SchedulyticsScreenFrame(this.body);

  // Using nested Scaffolds is not recommended, but for web
  // it is currently the only option not to overlay the AppBar with the Drawer
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: _buildSchedulyticsAppBar(context),
      body: Scaffold(
        key: _scaffoldKey,
        drawer: _buildSchedulyticsDrawer(context),
        body: body,
      ),
    );
  }

  AppBar _buildSchedulyticsAppBar(BuildContext context) {
    return AppBar(
      title: GestureDetector(
        child: Text("Schedulytics"),
        onTap: () => _routes.navigateToScreen(
            context, SchedulyticsRouteTypeEnum.DASHBOARD),
      ),
      leading: IconButton(
        icon: Icon(Icons.dehaze),
        onPressed: () => _toggleDrawer(),
      ),
      automaticallyImplyLeading: false,
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.settings, color: Colors.white),
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.face, color: Colors.white),
              onPressed: () => {},
            ),
          ],
        )
      ],
    );
  }

  Drawer _buildSchedulyticsDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Dashboard'),
            onTap: () => _navigateAndCloseDrawer(
                context, SchedulyticsRouteTypeEnum.DASHBOARD),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.build),
            title: Text('Jobs'),
            onTap: () => _navigateAndCloseDrawer(
                context, SchedulyticsRouteTypeEnum.JOBS),
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Executions'),
            onTap: () => _navigateAndCloseDrawer(
                context, SchedulyticsRouteTypeEnum.EXECUTIONS),
          ),
        ],
      ),
    );
  }

  void _navigateAndCloseDrawer(
      BuildContext context, SchedulyticsRouteTypeEnum type) {
    _routes.navigateToScreen(context, type);
    _toggleDrawer();
  }

  void _toggleDrawer() {
    if (_scaffoldKey.currentState.isDrawerOpen == false) {
      _scaffoldKey.currentState.openDrawer();
    } else {
      _scaffoldKey.currentState.openEndDrawer();
    }
  }
}
