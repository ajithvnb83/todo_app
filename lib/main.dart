import 'package:flutter/material.dart';
import 'package:todo/my_app.dart';
import 'package:todo/core/utils/injection_container.dart' as sl;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  sl.init();
  runApp(const MyApp());
}
