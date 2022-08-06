import 'package:flutter/material.dart';

class FAQPage extends StatefulWidget {
  const FAQPage({Key? key}) : super(key: key);

  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      body:Body() ,
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
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 2,
            color: Colors.black12
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset("assets/faqimage.png",
              width: 200,
                height: 100,
              ),
              SizedBox(height: 30,),
              Text("We are happy to help you !",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
              ),
              SizedBox(height: 50,),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                height: MediaQuery.of(context).size.height*0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    width: 2,
                    color: Colors.black38,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Subject",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                height: MediaQuery.of(context).size.height*0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    width: 2,
                    color: Colors.black38,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type Your Query",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.25,
                      height: MediaQuery.of(context).size.height*0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          colors: [Color(0xFFc33bff),
                            Color(0xFF3aa0d8)],
                        ),
                      ),
                      child: TextButton(
                        onPressed: (){
                          print("button working");
                        },
                        child: Text("Submit",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.25,
                      height: MediaQuery.of(context).size.height*0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          colors: [Color(0xFFc33bff),
                            Color(0xFF3aa0d8)],
                        ),
                      ),
                      child: TextButton(
                        onPressed: (){
                          print("button working");
                        },
                        child: Text("Cancel",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
