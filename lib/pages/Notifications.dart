import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final double coverHeight = 220;
  final double profileHeight = 110;
  final String message = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";



  static const double bottomNavHeight = 50;
  static const double appbarr = 60;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(238,233,233, 1),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(appbarr),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.purpleAccent,
                    // Color(0xFFc33bff).withOpacity(0.5),
                    Colors.lightBlueAccent,
                    // Color(0xFF3aa0d8).withOpacity(0.5)
                  ],
                )
            ),
            child: AppBar(
              backgroundColor: Colors.transparent,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back, color: Colors.white,),
                  Expanded(
                      child: Center(child: Text("Edit Profile", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)))),
                ],
              ),
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          children: <Widget>[
            notification("Confirmation of Demo of School", "29 Jun 2022 12:19:58 pm", message),
            notification("Order and Transaction Status", "29 Jun 2022 12:19:58 pm", message),
            notification("Order and Transaction status", "29 Jun 2022 12:19:58 pm", message),
            notification("Confirmation of Demo of School", "29 Jun 2022 12:19:58 pm", message),


          ],
        ),

    );
  }

  Widget notification(title, datime, textt) => Padding(
    padding: const EdgeInsets.only(left: 5, right: 5, bottom: 12),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 4),
                  child: Text(datime, style: TextStyle(color: Colors.grey, fontSize: 12),),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(textt, style: TextStyle(color: Colors.grey, fontSize: 12)),
            )
          ],
        ),
      ),

    ),
  );





}