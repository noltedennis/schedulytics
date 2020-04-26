import 'package:flutter/material.dart';

import 'SchedulyticsRoutes.dart';

class SchedulyticsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  static const double height = 48;

  final _routes = SchedulyticsRoutes();
  final GlobalKey<ScaffoldState> _scaffoldKey;

  SchedulyticsAppBar(this._scaffoldKey);

  @override
  Widget build(BuildContext context) {
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
        IconButton(
          icon: Icon(_choices[0].icon, color: Colors.white),
          onPressed: () => {},
        ),
        IconButton(
          icon: Icon(_choices[1].icon, color: Colors.white),
          onPressed: () => {},
        ),
        PopupMenuButton<_Choice>(
          icon: CircleAvatar(
            child: Text('DN'),
          ),
          itemBuilder: (BuildContext context) {
            return _choices.skip(2).map((_Choice choice) {
              return PopupMenuItem<_Choice>(
                value: choice,
                child: Text(choice.title),
              );
            }).toList();
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);

  void _toggleDrawer() {
    if (_scaffoldKey.currentState.isDrawerOpen == false) {
      _scaffoldKey.currentState.openDrawer();
    } else {
      _scaffoldKey.currentState.openEndDrawer();
    }
  }
}

class _Choice {
  const _Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<_Choice> _choices = const <_Choice>[
  const _Choice(title: 'Search', icon: Icons.search),
  const _Choice(title: 'Notifications', icon: Icons.notifications),
  const _Choice(title: 'Settings', icon: Icons.settings),
  const _Choice(title: 'Use profile', icon: Icons.person),
  const _Choice(title: 'Logout', icon: Icons.exit_to_app),
];
