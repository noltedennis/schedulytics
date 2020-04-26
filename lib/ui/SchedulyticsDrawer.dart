import 'package:flutter/material.dart';

import 'SchedulyticsRoutes.dart';

class SchedulyticsDrawer extends StatelessWidget {
  final _routes = SchedulyticsRoutes();
  final GlobalKey<ScaffoldState> _scaffoldKey;

  SchedulyticsDrawer(this._scaffoldKey);

  @override
  Widget build(BuildContext context) {
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
    if (_scaffoldKey.currentState.isDrawerOpen) {
      _scaffoldKey.currentState.openEndDrawer();
    }
  }
}
