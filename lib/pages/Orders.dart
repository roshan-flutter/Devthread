import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  final double coverHeight = 120;
  final double profileHeight = 110;
  List<String> litems = ["Healthy On", "Education D1", "Torus", "Healthy On"];
  List<String> price = ["₹23,391,00", "-₹1,871.00", "3,388.00", "24,540.00"];
  List<String> status = ["Payment Confirmed", "Payment not done", "Payment Confirmed", "Payment Confirmed"];
  List<String> datee = ["28/06/2022 15:27:58", "28/06/2022 15:27:58", "28/06/2022 15:27:58", "28/06/2022 15:27:58"];
  List<String> orderId = ["JVTORD20220628152827", "JVTORD20220628152758", "JVTORD20220628152332", "JVTORD20220627094626"];
  List<String> icons = ["pay.png", "cancel.png", "track.png", "info.png"];



  @override
  Widget build(BuildContext context) {


    return Scaffold(
          body: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              topScreen(),
              SizedBox(
                height: coverHeight,
              ),

              SizedBox(
                  height: MediaQuery.of(context).size.height - coverHeight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),

                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12.0, top: 10, left: 12),
                          child: cardView(litems, price, datee, orderId, status),
                        )),
                  )
              ),
            ],
          )

    );
  }

  Widget topScreen() {
    const double top = 55;
    return Stack(
      clipBehavior: Clip.none, //so the objects appers even outside the area
      alignment: Alignment.center,
      children: [


        Container(
          width: double.infinity,
          height: coverHeight,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.purpleAccent,
                  // Color(0xFFc33bff).withOpacity(0.5),
                  Colors.blueAccent,
                  // Color(0xFF3aa0d8).withOpacity(0.5)
                ],


              )
          ),
        ),

        Positioned(
          top: 10,
          child: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width - 48,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: SizedBox(
                          height: 30,
                          child: TextField(
                            decoration: InputDecoration(
                              // filled: true,
                              // fillColor: Colors.black,
                              hintText: "Search here...",
                                border: InputBorder.none
                            ),
                          ),

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Icon(Icons.search, color: Colors.black54, size: 24.0),
                    )

                  ]
              ),
            ),
          ),
        ),


        Positioned(
          top: coverHeight - 35,
          child: ticketButton(),
        ),

      ],
    );
  }


  Widget ticketButton() => Container(
    width: MediaQuery.of(context).size.width - 60,
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/order.png", height: 60,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Orders', style: TextStyle(fontSize: 18))
            ],
          ),
        ],
      ),
    ),

    padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 5),
    decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            //offset: Offset(0, 2),
              color: Color(0xCE201F1F).withOpacity(0.15),
              spreadRadius: 5,
              blurRadius: 10
          )
        ]
    ),

  );

  ListView cardView(litems, price, datee, order, status) {
    return ListView.builder(
      itemCount: litems.length,
      itemBuilder: (BuildContext contextt, int index){
        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.27), //shadow for button
                    blurRadius: 4,
                    offset: Offset(0,2),
                  ) //blur radius of shadow
                ]
              //border: Border.all(color: Colors.black),
              //borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: Text(litems[index], style: TextStyle(fontSize: 18),)),
                      Text(price[index], style: TextStyle(color: Colors.purpleAccent),),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(datee[index], style: TextStyle(color: Colors.grey, fontSize: 12),),
                  ),
                  Text(order[index], style: TextStyle(color: Colors.purpleAccent, fontWeight: FontWeight.bold, fontSize: 12)),

                  Divider(
                    thickness: 1.5,
                  ),

                  Row(
                    children: [
                      Image.asset("assets/${icons[0]}", scale: 4,),
                      // Text((() {
                      //   if(status[0] == "Payment Confirmed") {
                      //     return "";
                      //   }
                      //   return "";
                      //
                      // })()),


                      Flexible(child: Text(status[0], style: TextStyle(fontSize: 10))),

                      Image.asset("assets/${icons[1]}", scale: 4,),
                      Flexible(child: Text(status[1], style: TextStyle(fontSize: 10))),

                      Image.asset("assets/${icons[2]}", scale: 4,),
                      
                      Flexible(child: Text(status[2], style: TextStyle(fontSize: 10))),

                      Image.asset("assets/${icons[3]}", scale: 4,),
                      Flexible(child: Text(status[3], style: TextStyle(fontSize: 10),)),
                      
                    ],
                  ),

                ],
              ),
            ),
          ),
        );
        //new Text(litems[index] + ":" +litems[index] );
      },
    );
  }

}