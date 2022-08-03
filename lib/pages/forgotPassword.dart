import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.arrow_back),
          ),

          Center(
              child:

              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Text("Forgot Password", style: TextStyle(color: Colors.blue, fontSize: 44),),
              )),

          Center(
              child:
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Image.asset("assets/lock.png", scale: 0.5,),
              )),

          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Center(
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width- 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 5),
                          color: Color(0xCE201F1F).withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 10
                      )
                    ]
                ),
                child:
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Icon(Icons.mail, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 50,
                      width: 80,
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                            hintText: "Email Address",
                            border: InputBorder.none,
                            // filled: true,
                            // fillColor: Colors.white,




                          ),
                    ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Center(
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 80,

                child: DecoratedBox(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Colors.purpleAccent,
                              Colors.blueAccent
                              //add more colors
                            ]),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                              blurRadius: 2) //blur radius of shadow
                        ]
                    ),
                    child:ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          onSurface: Colors.transparent,
                          shadowColor: Colors.transparent,
                          //make color or elevated button transparent
                        ),

                        onPressed: (){                              },
                        child: Padding(
                          padding:EdgeInsets.only(
                              top: 12,
                              bottom: 12,
                              left: 28,
                              right: 28
                          ),
                          child:Text("RESET PASSWORD"),
                        )
                    )
                )
            ),
          )
        ],
      ),
    );
  }
}
