import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
    var orderID="#JVTINV517181112";
    var userName= "Vimal Kumar Gupta";
    var userEmailid="vimalkumargupta5@gmail.com";
    var oidID="JVTORD20220628152827";
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Center(
                  child: Container(
                   //color: Colors.red,
                    width: MediaQuery.of(context).size.width*0.4,
                    height: MediaQuery.of(context).size.height*0.1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/food.jpeg",
                      width: 80,
                      height: 80,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text("191/1, 2 nd Floor, New Thipassandra"
                        "\nMain Rd, Patel Seetappa Colony,"
                        "\nHAL 3rd Stage, Colony new 515"
                        "\nNew Tippasandra, Bengaluru, Karnataka"
                        "\n560075",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.06,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFc33bff),
                  Color(0xFF3aa0d8),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              ),
            ),
            child: Center(
              child: Text(orderID,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              ),
            ),
          ),
          Container(
            color: Colors.black12,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Billed To",
                      style: TextStyle(
                      color: Colors.blue,
                        fontSize: 18,
                      ),
                      ),
                      SizedBox(height: 10,),
                      Text(userName,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(userEmailid,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("OID:"),
                      Text(oidID),
                      Row(
                        children: [
                          Text("DOO: "),
                          Text(
                            DateFormat('dd/MM/yyyy-kk:mm:ss').format(DateTime.now(),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("DOI: "),
                          Text("Thu Aug 04 09:26:50"),
                        ],
                      ),
                      Text("GMT +05:30 2022"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SeperatorLine1(),
          TextSeperator(context, "Order Details"),
          SeperatorLine2(),
          OrderDetails(),
          SeperatorLine1(),
          TextSeperator(context, "Payment Details"),
          SeperatorLine2(),
          PaymentDetails(),
          SeperatorLine1(),
          ContactDetails(context, "devthread2020@gmail.com","+91 9900367097"),
          Buttons(),
        ],
      ),
    );
  }
}

class SeperatorLine1 extends StatelessWidget {
  const SeperatorLine1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 3,
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

class SeperatorLine2 extends StatelessWidget {
  const SeperatorLine2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 3,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFc33bff),
            Color(0xFF3aa0d8),
          ],
        ),
      ),
    );
  }
}

Widget TextSeperator(BuildContext context, String seperatorText){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height*0.06,
    color: Colors.black12,
    child: Center(
      child: Text(seperatorText,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      ),
    ),
  );
}

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
        child: Column(
          children: [
            AllDetails("Product Type","Start"),
            SizedBox(height: 5,),
            AllDetails("Product Name","Healthy On"),
            SizedBox(height: 5,),
            AllDetails("Delivery Opted","21 Days"),
            SizedBox(height: 5,),
            AllDetails("Service Validity","6 Months"),
          ],
        ),
      ),
    );
  }
}

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var amount=23391.00;
    var gst= 0.18*amount;
    var dueAmount=0.0;
    var typePayment= "One Time";
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
        child: Column(
          children: [
            AllDetails("Total Amount","₹ "+amount.toString()),
            SizedBox(height: 5,),
            AllDetails("GST(18%)","₹ "+gst.toString()),
            SizedBox(height: 5,),
            AllDetails("Paid Amount","₹ "+amount.toString()),
            SizedBox(height: 5,),
            AllDetails("Due Amount","₹ "+dueAmount.toString()),
            SizedBox(height: 5,),
            AllDetails("Payment Type", typePayment),
          ],
        ),
      ),
    );
  }
}


Widget AllDetails(String service,String entry){
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(service,
        style: TextStyle(
            fontSize: 16,
            color: Colors.black54
        ),
      ),
      Text(entry,
        style: TextStyle(
            fontSize: 16,
            color: Colors.black87,
        ),
      ),
    ],
    );
}

Widget ContactDetails(BuildContext context, String email, String contactNumber){
  return Container(
    width: MediaQuery.of(context).size.width,
    color: Colors.black12,
    child: Column(
      children: [
        Text("For any help please feel free to contact",
        style: TextStyle(
          color: Colors.black54,
        ),
        ),
        SizedBox(height: 5,),
        Text("Email: "+email,
        style: TextStyle(
            fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        ),
        SizedBox(height: 5,),
        Text("M.NO."+contactNumber,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 5,),
        Text("Or contact us on the given address",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        SizedBox(height: 5,),
      ],
    ),
  );
}
Widget Buttons(){
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue,
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.share,
                size: 30,
              ),
              color: Colors.white,
            ),
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue,
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.alternate_email_sharp,
                size: 30,
              ),
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );

}
