import 'package:devthread/Test/buttontest.dart';
import 'package:flutter/material.dart';
class HelpCenter extends StatefulWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.arrow_back_outlined,
              size: 30,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Help Center",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25,
              ),
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              TopContainer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Polpular Topics",
                    style: TextStyle(
                    fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Column(

                ),
              ),
            ],
          ),
        ),
    );
  }
}

class TopContainer extends StatelessWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.2,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFc33bff),
            Color(0xFF3aa0d8)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            width: MediaQuery.of(context).size.width*0.8,
            height: MediaQuery.of(context).size.height*0.05,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white
            ),
            child: Container(
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.height*0.05,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: TextField(
                  decoration:InputDecoration(
                    border: InputBorder.none,
                    hintText: "Tap to Search",
                    icon: Icon(Icons.search_outlined,
                    color: Colors.black54,),
                  ) ,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


