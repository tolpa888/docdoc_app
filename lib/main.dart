import 'package:flutter/material.dart';
import 'package:docdoc_app/core/routing/app_router.dart';
import 'package:docdoc_app/doc_app.dart';

import 'core/di/dependency_injection.dart';

void main() {
  setupGetIt();
  runApp(

    DocApp(appRouter: AppRouter()),
  );
}
