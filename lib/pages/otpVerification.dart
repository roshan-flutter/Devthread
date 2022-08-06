import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerifyOTP extends StatelessWidget {

  const VerifyOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String number = "+919090909090";
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Center(
              child:
              Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 60),
                child: Image.asset("assets/click.png", scale: 0.6,),
              )),

          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Center(
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width- 40,
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("OTP Verification", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, left: 12, top: 8),
                      child: Text("One Time password sent to\n${number}", style: TextStyle(fontSize: 16)),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 12,
                        ),

                        otp(),
                        SizedBox(
                          width: 5,
                        ),
                        otp(),
                        SizedBox(
                          width: 5,
                        ),
                        otp(),
                        SizedBox(
                          width: 5,
                        ),
                        otp(),
                        SizedBox(
                          width: 5,
                        ),
                        otp(),
                        SizedBox(
                          width: 5,
                        ),
                        otp()


                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Enter 6 digit OTP sent to your phone number to verify your phone", style: TextStyle(color: Colors.grey),),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
                      child: Row(

                        children: [

                          Text("RESEND OTP", style: TextStyle(color: Colors.blue),),
                          Icon(Icons.arrow_right, color: Colors.blue,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          Center(
            child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width - 40,
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
                          child:Text("Verify OTP"),
                        )
                    )
                )
            ),
          )
        ],
      ),
    );
  }

  Widget otp() {
    return SizedBox(
      height: 38,
      width: 35,
      child: TextField(
        style: TextStyle(fontSize: 18),
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey.withOpacity(0.3),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                width: 0,
                color: Colors.grey.withOpacity(0.3),
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                width: 0,
                color: Colors.grey.withOpacity(0.3),
              )
          ),

        ),
      ),
    );

  }
}
