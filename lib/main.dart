import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'di.dart';
import 'my_app.dart';
import 'navigation/router.dart';

void main() {
  setupContainer();
  final router = getIt<BuildRouter>();

  usePathUrlStrategy();
  runApp(
    MyApp(
      router: router(),
    ),
  );
}
