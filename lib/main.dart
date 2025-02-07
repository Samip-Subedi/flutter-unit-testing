import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:upanetra_test/app/app.dart';
import 'package:upanetra_test/app/di/di.dart';
import 'package:upanetra_test/core/network/hive_service.dart';
import 'package:upanetra_test/feature/Product/data/model/product_hive_model.dart';
import 'package:upanetra_test/feature/auth/data/model/auth_hive_model.dart';
import 'package:upanetra_test/feature/order/data/model/order_hive_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive.registerAdapter(AuthHiveModelAdapter());
  Hive.registerAdapter(ProductHiveModelAdapter());
  Hive.registerAdapter(OrderHiveModelAdapter());
  await HiveService().init();
  await initDependencies();

  runApp(
    const MyApp(),
  );
}
