import 'package:flutter/material.dart';
import 'package:flutter_stetho/flutter_stetho.dart';
import 'generated/i18n.dart';
import 'page/main_page.dart';
import 'page/flash_page.dart';

void main() {
  Stetho.initialize();
  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [S.delegate],
      supportedLocales: S.delegate.supportedLocales,
      title: "터우탸오",
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      initialRoute: 'flash',
      routes: {
        'flash': (context) => FlashPage(),
        'main_page': (context) => MainPage(),
      },
    );
  }
}
