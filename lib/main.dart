import 'package:devthread/Test/buttontest.dart';
import 'package:devthread/pages/cancellation_policy.dart';
import 'package:devthread/pages/page1.dart';
import 'package:devthread/pages/userProfilePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return //UserProfile();
    // return UserProfile();
     FirstPage();
  }
}
