import 'package:devthread/Test/buttontest.dart';
import 'package:flutter/material.dart';
class CancillationPolicy extends StatefulWidget {
  const CancillationPolicy({Key? key}) : super(key: key);

  @override
  State<CancillationPolicy> createState() => _CancillationPolicyState();
}

class _CancillationPolicyState extends State<CancillationPolicy> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              width: 350,
              height: 400,
              color: Colors.black12,
              child: Column(
                children: [
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFc33bff),
                          Color(0xFF3aa0d8),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Cancellation Policy",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          IconButton(onPressed: (){
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonTest()));
                            print("Button is working ");
                          },
                            icon: Icon(Icons.cancel_presentation,
                              color: Colors.white,
                              size: 30,
                            ),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 330,
                    height: 300,
                    color: Colors.white,
                    child: Column(
                      children: [
                        MyRow1("Cancellation Policy", "Cancellation Charge"),
                        MyRow2("Before 11:59PM 23-jul", "No Charges"),
                        MyRow1("Before 11:59AM 24-jul", "₹ 41,40.00"),
                        MyRow1("Before 11:59PM 24-jul", "₹ 8,280.00"),
                        MyRow3("After 24-Jul", "No refund"),
                        Align(
                          alignment: Alignment.center,
                          child: Text("* Note: you can cancel the order with \n"
                              "in 2 days from the date of order & refund\n will "
                              "processed with in 5 working days.",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 15
                            ),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


Widget MyRow1(String _policy, String _charges)=> Container(
  child: Padding(
    padding: const EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(_policy,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                //  color: Colors,
              ),),
            Text(_charges,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                //  color: Colors,
              ),),
          ],
        ),
        SizedBox(height: 5,),
        Container(
          width: 300,
          height: 2,
          color: Colors.black38,
        ),
      ],
    ),

  ),
);

Widget MyRow2(String _policy, String _charges)=> Container(
  child: Padding(
    padding: const EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(_policy,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                //  color: Colors,
              ),),
            Text(_charges,
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),),
          ],
        ),
        SizedBox(height: 5,),
        Container(
          width: 300,
          height: 2,
          color: Colors.black38,
        ),
      ],
    ),

  ),
);

Widget MyRow3(String _policy, String _charges)=> Container(
  child: Padding(
    padding: const EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(_policy,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                //  color: Colors,
              ),),
            Text(_charges,
              style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),),
          ],
        ),
        SizedBox(height: 5,),
        // Container(
        //   width: 300,
        //   height: 1,
        //   color: Colors.black,
        // ),
      ],
    ),

  ),
);