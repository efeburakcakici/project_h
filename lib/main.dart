import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:project_h/model/transaction.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:project_h/page/login.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox<Transaction>('transactions');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Mikromarin Otel';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.indigo),
    home: Loginmain(),
  );
}