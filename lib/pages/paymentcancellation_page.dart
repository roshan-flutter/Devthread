import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentDecline extends StatefulWidget {
  const PaymentDecline({Key? key}) : super(key: key);

  @override
  State<PaymentDecline> createState() => _PaymentDeclineState();
}

class _PaymentDeclineState extends State<PaymentDecline> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: PageBody(),
    ),
    );
  }
}


class PageBody extends StatelessWidget {
  const PageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var transactionId="pay_Kln0Yelf0Cis85";
    var _userName= "Vimal Kumar Gupta";
    var  _userEmail="vimalkumargupta@gmail.com";
    var amount="23,391.00";
    return Container(
      child: Column(
        children: [
          //SizedBox(height: 20,),
          TopIconBar(context),
          ColorLine(context),
          Container(
            child: Column(
              children: [
                Image.asset("icons/book.png",
                  width: 50,
                  height: 50,
                ),
                Text("Your transaction was declined.",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 16,
                  ),
                ),
                Image.asset("assets/barcode.png",
                  width: MediaQuery.of(context).size.width*0.5,
                  height: MediaQuery.of(context).size.height*0.1,
                ),
                SizedBox(height: 10,),
                ColorLine(context),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Date:",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        //  SizedBox(height: 5,),
                          // Text("Transaction Id:",
                          //   style: TextStyle(
                          //     fontWeight: FontWeight.w400,
                          //     fontSize: 16,
                          //   ),
                          // ),
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            DateFormat("dd/MM/yyyy-kk:mm:ss").format(DateTime.now(),
                            ),
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                         // SizedBox(height: 5,),
                          // Text(transactionId,
                          //   style: TextStyle(
                          //     fontWeight: FontWeight.w500,
                          //     fontSize: 17,
                          //   ),
                          // ),

                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          ColorLine(context),
          Padding(padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Billing to",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5,),
                Text(_userName,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue.shade700,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5,),
                Text(_userEmail,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10,),
                BlackLine(context),

              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Paid Amount",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5,),
                Text("₹ "+amount.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5,),
                // Text("Status",
                //   style: TextStyle(
                //     fontWeight: FontWeight.w400,
                //     fontSize: 16,
                //   ),
                // ),
                //SizedBox(height: 5,),
                Text("PAYMENT CANCELLED",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10,),
                BlackLine(context),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: (){},
                      child: Image.asset("icons/sharing.png",
                        width: 60,
                        height: 40,)
                  ),
                  SizedBox(height: 10,),
                  Text("Share",
                    style: TextStyle(
                      color: Colors.purple.shade300,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Container(
                width: 2,
                height: MediaQuery.of(context).size.height*0.06,
                color: Colors.black38,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: (){},
                      child: Image.asset("icons/download.png",
                        width: 60,
                        height: 40,)
                  ),
                  SizedBox(height: 10,),
                  Text("Download",
                    style: TextStyle(
                      color: Colors.purple.shade300,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          DoneButton(context),
        ],
      ),
    );
  }
}


Widget ColorLine(BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 3,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Color(0xFFc33bff),
          Color(0xFF3aa0d8)],
      ),
    ),
  );
}
Widget BlackLine(BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 2,
    color: Colors.black38,
  );
}

Widget DoneButton(BuildContext context){
  return  Padding(
    padding: const EdgeInsets.all(16.0),
    child: Container(
      width: MediaQuery.of(context).size.width*0.5,
      height: MediaQuery.of(context).size.height*0.06,
      decoration: BoxDecoration(
        // color: Colors.black38,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            width: 2,
            color: Colors.purple,
          )
      ),
      child: Center(
          child: TextButton(
            onPressed: (){},
            child: Text("DONE",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          )
      ),
    ),
  );
}

Widget TopIconBar(BuildContext context){
  return Container(
    color: Colors.green.shade100,
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("icons/cart.png",
          width: 60,
            height: 40,
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.2,
            height: 3,
            decoration: BoxDecoration(
              gradient:  LinearGradient(
                  colors: [
                    Color(0xFFc33bff),
                    Color(0xFF3aa0d8),
                  ],
              ),
            ),
          ),
          Image.asset("icons/walletblack.png",
          width: 60,
          height: 40,
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.2,
            height: 3,
            decoration: BoxDecoration(
              gradient:  LinearGradient(
                colors: [
                  Color(0xFFc33bff),
                  Color(0xFF3aa0d8),
                ],
              ),
            ),
          ),
          Image.asset("assets/check_color.png",
            width: 60,
            height: 50,
          ),
        ],
      ),
    ),
  );
}