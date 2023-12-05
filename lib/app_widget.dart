// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myprofile/profile/profile_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.lime,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: ProfilePage(),
    );
  }
}
