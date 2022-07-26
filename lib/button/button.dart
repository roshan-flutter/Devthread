import 'package:devthread/Theme/buttontest.dart';
import 'package:flutter/material.dart';
String _imagePath= _imagePath;
String _buttonName= _buttonName;
String _onpressed=_onpressed;
Widget MobAppButton(String _imagePath, String _buttonName, String _onpressed)=> Container(
  height: 90,
 width: 90,
  decoration: BoxDecoration(
    color: Colors.white54,
    borderRadius: BorderRadius.circular(300),
  ),
  child: Column(
    children: [
      Center(
        child: InkWell(
          splashColor: Colors.black26,
          onTap: (){
            _onpressed;
            print("Button was tapped");
          },
          child: Image.asset(_imagePath,
            width: 40,
            height: 40,
          ),
          ),
      ),
      Padding(
        padding: const EdgeInsets.all(2),
        child: Text(_buttonName,
        style: TextStyle(fontSize: 15,
            fontWeight: FontWeight.w500,),),
      ),
    ],
  ),
  );