import 'package:flutter/material.dart';
import 'package:mobil_projesi/view/homepage_view.dart';
import 'package:mobil_projesi/view/login_page_view.dart';

import '../service/auth.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Auth().authStateChanges,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print(snapshot.data);
            return //snapshot.connectionState == ConnectionState.waiting
                //    ? CircularProgressIndicator() :
                HomePage();
          } else {
            return LoginPage();
          }
        });
  }
}
