import 'package:flutter/widgets.dart';
import 'package:flutter_auth_base/flutter_auth_base.dart';

import 'src/pages/home_page.dart';
import 'core/auth/handlers/email/signIn/signIn_page.dart';
import 'core/auth/handlers/email/signUp/signUp_page.dart';

//TODO add more routes specific to the application
Map<String, WidgetBuilder> buildRoutes(AuthService authService) {
  var routes = new Map<String, WidgetBuilder>();

  routes['/home'] = (BuildContext context) => new HomePage();

  routes[SignInPassword.routeName] =
      (BuildContext context) => new SignInPassword(authService: authService);
  routes[SignUpPassword.routeName] =
      (BuildContext context) => new SignUpPassword(authService: authService);

  return routes;
}

//As an alternative to the routes, you can return a generator
RouteFactory buildGenerator() {
  return null;
}