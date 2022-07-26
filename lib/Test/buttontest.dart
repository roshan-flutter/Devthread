////////////////////////// This page is just to check that button is working,
////////////////////////// If you also wanna check just navigate to ButtonTest class

import 'package:flutter/material.dart';
class ButtonTest extends StatelessWidget {
  const ButtonTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Button is working",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),),
      ),
    );
  }
}
