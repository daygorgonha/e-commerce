import 'package:flutter/material.dart';
import 'package:layouts_no_flutter/themes/dark.theme.dart';
import 'package:layouts_no_flutter/themes/light.theme.dart';
import 'pages/tabs.page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme(),
      home: DefaultTabController(
        length: 3,
        child: TabsPage(),
      ),
    );
  }
}
