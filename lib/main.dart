import 'package:flutter/material.dart';
import 'package:postagecheck/data/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:postagecheck/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Postage Fee',
        routerConfig: appRouter);
  }
}
