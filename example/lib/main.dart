// ignore_for_file: use_key_in_widget_constructors

import 'package:atreeon_menu_flutter/menuItem.dart';
import 'package:atreeon_menu_flutter/menuSand.dart';
import 'package:example/GetChildSize_Demo.dart';
import 'package:example/ScreenSize_Demo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      );
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return SafeArea(
      child: MenuSand(
        "get_child_size demos",
        [
          MenuItemAdi("GetChildSize_Demo", () => const GetChildSize_Demo()),
          MenuItemAdi("ScreenSizeDemo", () =>  const ScreenSizeDemo()),
        ],
      ),
    );
  }
}
