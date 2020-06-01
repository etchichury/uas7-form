import 'package:flutter/material.dart';

import 'screens/main_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'UAS7 Form', home: new MainScreen());
  }
}
