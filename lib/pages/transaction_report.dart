import 'package:devthread/pages/total_amount.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class transactionReport extends StatefulWidget {
  const transactionReport({Key? key}) : super(key: key);


  @override
  _transactionReportState createState() => _transactionReportState();
}

class _transactionReportState extends State<transactionReport> {
  List<String> litems = ["Services", "Home", "Announcements", "Search", "Vision", "About Us"];
  List<String> litems2 = ["None"];
  List<String> litems3 =["Security", "Speed", "UI/UX", "Backend", "Frontend", "Delivery Time", "Service Validity"];
  List<String> litems4 =["SQRT", "SPD", "DS", "BB", "FF", "21 Days", "6 Months"];
  static const double bottomNavHeight = 84;
  static const double appbarr = 40;
  static const String OrderId = "JVTORD20220628152827";
  static const String platform = "Android & IOS";
  static const String Domain = "Android & IOS";
  static const String ProdName = "Healthy On";

  String totall = "₹23,391.00";
  String paid = "₹23,391.00";
  String due = "₹0.00";
  String installment = "One Time";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(appbarr),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                 begin: Alignment.topCenter,
                 end: Alignment.bottomCenter,
                  colors: [
                    Colors.purpleAccent,
                    Colors.blueAccent
                    //add more colors
                  ]),
            ),
            //color: Colors.green.shade50,
            child: Center(child: Text(OrderId, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Column(
                      children:[
                        Image.asset("assets/screenshot.jpg", scale: 3,),
                      ]
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[

                            RichText(
                              text: TextSpan(
                                text: "Platform: ",
                                style: TextStyle(color: Colors.purpleAccent),
                                children: <TextSpan>[
                                  TextSpan(text: platform, style: TextStyle(color: Colors.black))
                                ]
                            ),
                          ),
                            SizedBox(
                              height: 18,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Domain: ",
                                  style: TextStyle(color: Colors.purpleAccent),
                                  children: <TextSpan>[
                                    TextSpan(text: Domain, style: TextStyle(color: Colors.black))
                                  ]
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Product Name: ",
                                  style: TextStyle(color: Colors.purpleAccent),
                                  children: <TextSpan>[
                                    TextSpan(text: ProdName, style: TextStyle(color: Colors.black))
                                  ]
                              ),
                            )
                        ]
                      ),
                    ),
                  ],

                ),
              ),

              header("FEATURES"),
              SizedBox(
                  height: litems.length * 30,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12.0, top: 5),
                          child: cardView(litems, [], 2),
                        )),
                  )
              ),

              header("Unselected Features"),
              SizedBox(
                  height: litems2.length * 33,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12.0, top: 10),
                          child: cardView(litems2, [], 0),
                        )),
                  )
              ),

              header("Product Details"),
              SizedBox(
                  height: litems3.length * 29,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12.0, top: 10),
                          child: cardView(litems3, litems4, 1),
                        )),
                  )
              ),

              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 12, right: 12),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 0.8)
                      )
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24, top: 12, bottom: 18),
                child: ticketInfo(totall, paid, due, installment),
              ),


            ],
          ),
        ),
    );
  }

  Widget ticketInfo(total, paid, due, installment) => Container(
    decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(10),

        border: Border.all(
          width: 1.5,
          color: Colors.purpleAccent,
        ),

    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 14),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: [
                Expanded(child: Text("TOTAL", style: TextStyle(color: Colors.black87),)),
                Text(total, style: TextStyle())
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: [
                Expanded(child: Text("Paid", style: TextStyle(color: Colors.black),)),
                Text(paid, style: TextStyle(color: Colors.black),)
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: [
                Expanded(child: Text("Due", style: TextStyle(color: Colors.black),)),
                Text(due, style: TextStyle())
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: [
                Expanded(child: Text("Installment Type", style: TextStyle(color: Colors.black),)),
                Text(installment, style: TextStyle(color: Colors.black),)
              ],
            ),
          ),
        ],
      ),
    ),
  );

  ListView cardView(litems, list2, num) {
    return ListView.builder(
      itemCount: litems.length,
      itemBuilder: (BuildContext contextt, int index){
        return Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Container(
            child: Row(
              children: [
                Column(
                  children: [
                    //Text("₹500.00")
                    Container(
                      child: (num == 2)?
                          Icon(Icons.radio_button_checked):
                          Text("")
                      ,
                    ),


                  ],
                ),
                Expanded(
                    flex: 10,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0, bottom: 5),
                            child: Text(litems[index], style: TextStyle(color: Colors.black, fontSize: 14),),
                          ),
                        ],
                      ),
                    )
                ),

                Column(
                  children: [

                    //Text("₹500.00", style: TextStyle())
                    Text( (() {
                      if(num == 1) {
                        return list2[index];
                      }
                      return "";
                    })())

                  ],
                ),

              ],
            ),
          ),
        );
        //new Text(litems[index] + ":" +litems[index] );
      },
    );
  }


  Widget header(String text) => Padding(
    padding: const EdgeInsets.only(top: 8.0, left: 12, right: 12),
    child: Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0.5)
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(text, style: TextStyle(color: Colors.purpleAccent, fontSize: 20, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    ),
  );

}

class Top extends StatelessWidget {
  const Top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 28.0, top: 12),
          child: Bar("assets/cart_color.png"),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Container(
              //width: 80,
              height: 1,
              color: Color(0xFFc33bff),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Bar("assets/wallet_black.png"),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Container(
              //width: 10,
              height: 1,
              color: Color(0xFFc33bff),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 28.0, top: 12),
          child: Bar("assets/check_black.png"),
        ),
      ],
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

