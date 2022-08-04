import 'package:devthread/Test/buttontest.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FinalAmount extends StatefulWidget {
  const FinalAmount({Key? key}) : super(key: key);

  @override
  State<FinalAmount> createState() => _FinalAmountState();
}

class _FinalAmountState extends State<FinalAmount> {
  var _totalAmount=23391.00;
  var _payingAmount= 23391.00;
  var _dueAmount=0.0;
  var _finalAmount=0;
  var _payId="pay_JmsDkiMdpelOPE";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
             // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AmountContainer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text("Transactions",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Line(),
                Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16,top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(_payId,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                      Text("₹ "+_totalAmount.toString(),
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 8,right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){},
                          child: Text("Generate Invoice",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.redAccent,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                          ),
                      ),
                      Text(
                        DateFormat('dd-MM-yyyy').format(DateTime.now(),
                        ),
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.blueAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AmountContainer extends StatelessWidget {
  const AmountContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _totalAmount=23391.00;
    var _payingAmount= 23391.00;
    var _dueAmount=0.0;
    var _finalAmount=0;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.5,
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
      child: Padding(
        padding: const EdgeInsets.only(left: 16,top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Total Amount",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
            ),
            Text("₹ "+ _totalAmount.toString(),
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Paid Amount",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text("₹ "+_payingAmount.toString(),
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Due Amount",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text("₹ "+_dueAmount.toString(),
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width*0.5,
                  height: MediaQuery.of(context).size.height*0.05,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16,top: 5,bottom: 5),
                    child: Text(_finalAmount.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Container(
                  width: MediaQuery.of(context).size.width*0.3,
                  height: MediaQuery.of(context).size.height*0.05,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10),
                    ),
                  ),
                  child: TextButton(
                    onPressed: (){
                      //print("Pay button is working");
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonTest()));
                    },
                    child: Text("Pay",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}

class Line extends StatelessWidget {
  const Line({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width*0.9,
      height: 5,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFF3aa0d8),
              Color(0xFFc33bff),
            ],
        ),
      ),
    );
  }
}



