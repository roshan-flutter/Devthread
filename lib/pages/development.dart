import 'package:flutter/material.dart';
class Development extends StatefulWidget {
  const Development({Key? key}) : super(key: key);

  @override
  State<Development> createState() => _DevelopmentState();
}

class _DevelopmentState extends State<Development> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Body(),
    ),
    );
  }
}


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width*0.9,
        height: MediaQuery.of(context).size.height*0.9,
        // color: Colors.purple,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Colors.black12,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,bottom: 16),
              child: Text("Development",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container1(context),
          ],
        ),
      ),
    );
  }
}


Widget Container1(BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width*0.8,
    height: MediaQuery.of(context).size.height*0.5,
    decoration: BoxDecoration(
      color: Colors.lime,
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset("assets/1.jpg",
          width: 100,
          height: 100,
        ),
        Text("We Will Build Your Product",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Skilled developers of DevThread will build your product with an effective and bug-free solution and a great user interface for a great user experience",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/1.jpg",
                width: 50,
                height: 50,
              ),
              SizedBox(width: 5,),
              Text("DevThread",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ],
    ),
  );
}
