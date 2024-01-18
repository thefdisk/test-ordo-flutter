import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'presentation/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies(kReleaseMode ? Environment.prod : Environment.dev);

  runApp(const AppWidget());
}
