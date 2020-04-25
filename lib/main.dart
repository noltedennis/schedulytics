import 'package:flutter/material.dart';

void main() => runApp(SchedulyticsApp());

class SchedulyticsApp extends StatelessWidget {
  Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    final routes = {
      '/': (context) => SchedulyticsScreenFrame(DashboardScreen()),
      '/jobs': (context) => SchedulyticsScreenFrame(JobsScreen()),
      '/executions': (context) => SchedulyticsScreenFrame(ExecutionsScreen()),
    };

    switch (settings.name) {
      case '/':
      case '/jobs':
      case '/executions':
        return PageRouteBuilder(
          pageBuilder: (context, _, __) => routes[settings.name](context),
          settings: settings,
          transitionsBuilder: (_, anim, __, child) =>
              FadeTransition(opacity: anim, child: child),
        );
      default:
        throw UnsupportedError('Unknown route: ${settings.name}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schedulytics',
      initialRoute: '/',
      onGenerateRoute: _onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}

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
      appBar: _buildSchedulyticsAppBar(context, _scaffoldKey),
      body: Scaffold(
        key: _scaffoldKey,
        drawer: SchedulyticsDrawer(),
        body: body,
      ),
    );
  }
}

AppBar _buildSchedulyticsAppBar(
    BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
  return AppBar(
    title: GestureDetector(
      child: Text("Schedulytics"),
      onTap: () => Navigator.pushNamed(context, '/'),
    ),
    leading: IconButton(
        icon: Icon(Icons.dehaze),
        onPressed: () {
          if (scaffoldKey.currentState.isDrawerOpen == false) {
            scaffoldKey.currentState.openDrawer();
          } else {
            scaffoldKey.currentState.openEndDrawer();
          }
        }),
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

class SchedulyticsDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Dashboard'),
            onTap: () => Navigator.pushNamed(context, '/'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.build),
            title: Text('Jobs'),
            onTap: () => Navigator.pushNamed(context, '/jobs'),
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Executions'),
            onTap: () => Navigator.pushNamed(context, '/executions'),
          ),
        ],
      ),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Dashboard'),
    );
  }
}

class JobsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Jobs'),
    );
  }
}

class ExecutionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Executions'),
    );
  }
}
