import 'package:flutter/material.dart';

import 'SchedulyticsScreenFrame.dart';
import 'screens/DashboardScreen.dart';
import 'screens/JobsScreen.dart';
import 'screens/ExecutionsScreen.dart';

/// The SchedulyticsRoutes implements a singleton pattern to wrap a layer
/// around navigation that allows us to prevent multiple route changes to
/// the same screen.
///
/// It also provides the onGenerateRoute hook for the app that allows us to
/// change the default animation used when switching between screens.
class SchedulyticsRoutes {
  static final SchedulyticsRoutes _instance = SchedulyticsRoutes._internal();

  final _routes = {
    SchedulyticsRouteTypeEnum.DASHBOARD: _SchedulyticsRoute(
      '/',
      (context) => SchedulyticsScreenFrame(DashboardScreen()),
    ),
    SchedulyticsRouteTypeEnum.JOBS: _SchedulyticsRoute(
      '/jobs',
      (context) => SchedulyticsScreenFrame(JobsScreen()),
    ),
    SchedulyticsRouteTypeEnum.EXECUTIONS: _SchedulyticsRoute(
      '/executions',
      (context) => SchedulyticsScreenFrame(ExecutionsScreen()),
    ),
  };

  SchedulyticsRouteTypeEnum _currentRouteType;

  factory SchedulyticsRoutes() => _instance;

  // Currently, the dashboard screen is always the current route initially.
  // This matches the app's "initialRoute" definition.
  SchedulyticsRoutes._internal() {
    _currentRouteType = SchedulyticsRouteTypeEnum.DASHBOARD;
  }

  /// This is the preferred method to navigate between screens
  /// within the Schedulytics app, because it will not push to the Navigator
  /// stack if the screen does not change.
  /// The default Navigator methods continue to function and are adviced to be
  /// used for small actions, such as opening the drawer.
  void navigateToScreen(
      BuildContext context, SchedulyticsRouteTypeEnum targetRouteType) {
    // Do not navigate if already on route
    if (_currentRouteType == targetRouteType) return;
    Navigator.pushNamed(context, _routes[targetRouteType].path);
    _currentRouteType = targetRouteType;
  }

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return PageRouteBuilder(
      pageBuilder: (context, _, __) =>
          _findRouteActionByPath(settings.name)(context),
      settings: settings,
      transitionsBuilder: (_, anim, __, child) =>
          FadeTransition(opacity: anim, child: child),
    );
  }

  _SchedulyticsRouteAction _findRouteActionByPath(String path) {
    for (_SchedulyticsRoute r in _routes.values)
      if (r.path == path) return r.action;
    throw UnsupportedError('Unknown route: $path');
  }
}

enum SchedulyticsRouteTypeEnum { DASHBOARD, JOBS, EXECUTIONS }

class _SchedulyticsRoute {
  final String path;
  final _SchedulyticsRouteAction action;

  _SchedulyticsRoute(this.path, this.action);
}

typedef Widget _SchedulyticsRouteAction(BuildContext context);
