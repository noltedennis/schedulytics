import 'package:flutter/material.dart';

import 'ui/SchedulyticsRoutes.dart';

void main() => runApp(SchedulyticsApp());

class SchedulyticsApp extends StatelessWidget {
  final _routes = SchedulyticsRoutes();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schedulytics',
      initialRoute: '/',
      onGenerateRoute: _routes.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
