import 'package:devthread/Test/buttontest.dart';
import 'package:flutter/material.dart';
class TotalAmount extends StatefulWidget {
  const TotalAmount({Key? key}) : super(key: key);

  @override
  State<TotalAmount> createState() => _TotalAmountState();
}

class _TotalAmountState extends State<TotalAmount> {
  var total_amount = 23391.00;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.green.shade50,
          leading: Container(width: 10,),
          title: Padding(
            padding: const EdgeInsets.only(top: 32,bottom: 16),
            child: Top(),
          ),
        ),
        body: Container(
          color: Colors.green.shade50,
          child: Column(
            children: [
              Container1(),
           Container(
             child: Column(
               children: [
                 Padding(padding: EdgeInsets.only(left: 8,top: 16),
                   child: Row(
                     children: [Text("Choose Payment Installment",
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 20,
                       ),
                     ),
                     ],
                   ),
                 ),
                 Padding(padding: EdgeInsets.only(left: 8,top: 8,right:16),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("One Time",
                         style: TextStyle(
                           fontSize: 18,
                           fontWeight: FontWeight.w400,
                         ),
                       ),
                       IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down_outlined,
                       size: 40,)),
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 8,right: 8),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         width: 200,
                         height: 30,
                         child: Padding(
                           padding: const EdgeInsets.only(left:10,top: 12 ),
                           child: TextField(
                             decoration: InputDecoration(
                               border: InputBorder.none,
                               hintText: "Enter Coupan Code",
                             ),
                           ),
                         ),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(10)),
                           color: Colors.white,
                           border: Border.all(width: 1,color: Colors.black38),
                         ),
                       ),
                       Container(
                         height: 40,
                         width: 120,
                         color: Colors.white,
                         child: TextButton(
                           onPressed: (){},
                           child: Text("Apply Coupan",
                           style: TextStyle(
                           fontSize: 15,
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
              SizedBox(height: 30,),
              OrderButton(),
            ],
          ),
        ),
      ),
      ),
    );
  }
}

class Top extends StatelessWidget {
  const Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Bar("icons/cart.png"),
          Container(width: MediaQuery.of(context).size.width*0.2,
            height: 3,
          decoration: BoxDecoration(
            gradient:  LinearGradient(
              colors: [Color(0xFF3aa0d8),
                Color(0xFFc33bff)],
            ),
          ),
          ),
          Bar("icons/wallet.png"),
          Container(width: MediaQuery.of(context).size.width*0.2,
            height: 3,
            decoration: BoxDecoration(
              gradient:  LinearGradient(
                colors: [Color(0xFFc33bff),
                  Color(0xFF3aa0d8)],
              ),
            ),
          ),
          Bar("icons/check.png"),
        ],
      ),
    );
  }
}
Widget Bar (String _imgpathlink){
  return InkWell(
    onTap: (){
      print("button is working");
    },
    child: Container(
        width: 40,
        height: 40,
        child: Image.asset(_imgpathlink,)),
  );
}

class Container1 extends StatefulWidget {
  const Container1({Key? key}) : super(key: key);

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    var total_amount = 23391.00;
    var price =20700.00;
    var discount =1035.00;
    var gst =price*.18;
    return Padding(
      padding: const EdgeInsets.only(top: 16,bottom: 16),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.4,
        decoration: BoxDecoration(
          gradient:  LinearGradient(
            colors: [Color(0xFFc33bff),
              Color(0xFF3aa0d8)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16,bottom: 8),
              child: Text("Total Amount",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height:10 ),
            Text("₹ "+total_amount.toString(),
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 35,
              color: Colors.white,
            ),),
            SizedBox(height:10 ),
            Text("Installment amount to be paid now",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height:10 ),
            Text("₹ "+total_amount.toString(),
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.04,
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.9,
              height: MediaQuery.of(context).size.height*0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4,left: 8,right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("SUB TOTAL",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text("₹ "+price.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                        ),),
                    ],
                ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4,left: 8,right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("DISCOUNT",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text("- ₹ "+discount.toString(),
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4,left: 8,right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("GST(18%)",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Text("+ ₹ "+gst.toString(),
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class OrderButton extends StatelessWidget {
  const OrderButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.9,
      height: MediaQuery.of(context).size.height*0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          colors: [Color(0xFFc33bff),
            Color(0xFF3aa0d8)],
        ),
      ),
      child: TextButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonTest()));
        },
        child: Text("Add Order & Pay",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
        ),
      ),
    );
  }
}



