import 'package:devthread/Test/buttontest.dart';
import 'package:devthread/pages/cancellation_policy.dart';
import 'package:devthread/pages/edit_profile.dart';
import 'package:devthread/pages/final_amount.dart';
import 'package:devthread/pages/forgotPassword.dart';
import 'package:devthread/pages/help_center.dart';
import 'package:devthread/pages/login_page.dart';
import 'package:devthread/pages/page1.dart';
import 'package:devthread/pages/page2.dart';
import 'package:devthread/pages/prod_Description.dart';
import 'package:devthread/pages/product_Info.dart';
import 'package:devthread/pages/services_popup.dart';
import 'package:devthread/pages/signup_page.dart';
import 'package:devthread/pages/total_amount.dart';
import 'package:devthread/pages/transaction_report.dart';
import 'package:devthread/pages/userProfilePage.dart';
import 'package:devthread/pages/checkout_page.dart';
import 'package:devthread/pages/profile_settings.dart';
import 'package:devthread/pages/tickets_page.dart';
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
    // return //UserProfile();
    // return UserProfile();
    //  TotalAmount();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ForgotPassword(),
    );
  }

}
