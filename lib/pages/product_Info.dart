import 'package:devthread/pages/total_amount.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class prodInfo extends StatefulWidget {
  const prodInfo({Key? key}) : super(key: key);


  @override
  _prodInfoState createState() => _prodInfoState();
}

class _prodInfoState extends State<prodInfo> {
  static const double bottomNavHeight = 84;
  static const double appbarr = 40;
  static const String ProdName = "Healthy On";

  String totall = "₹20,700";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          height: 80,
          //color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text("Total Amount", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                          )
                        ],

                      ),
                      Row(
                        children: [
                          // Text("₹"+totAmount.toString(), style: TextStyle(fontSize: 20),)
                          Text("₹20,700.00", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(

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
                                  child:Text("Buy"),
                                )
                            )
                        )
                    )
                  ],
                ),
              ],
            ),
          ),
        ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/screenshot.jpg", scale: 3,),
                ],

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Image.asset("assets/screenshot.jpg", scale: 10,),
                ],

              ),
            ),

            Container(
              height: 25,
              color: Colors.purpleAccent.withOpacity(0.7),
              child:
              Center(child: Text("PAYMENT", style: TextStyle(color: Colors.white),)),
            ),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  child: Image.asset("assets/recolor.png",scale: 4,),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.purpleAccent),
                      boxShadow: [
                        BoxShadow(
                          //offset: Offset(0, 2),
                            color: Color(0xCE201F1F).withOpacity(0.15),
                            spreadRadius: 5,
                            blurRadius: 10
                        )
                      ]

                  ),
                ),
                Expanded(
                  child:
                  Center(
                    child: Container(
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/deliver.png", scale: 3),
                          Text("   Delivery in 21 Days"),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  child: Image.asset("assets/cart.png", scale: 4,),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    border: Border.all(color: Colors.purpleAccent),
                      boxShadow: [
                        BoxShadow(
                          //offset: Offset(0, 2),
                            color: Color(0xCE201F1F).withOpacity(0.15),
                            spreadRadius: 5,
                            blurRadius: 10
                        )
                      ]
                  ),
                ),
              ],
            ),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      offset: Offset(0, 4),
                        color: Color.fromRGBO(0, 0, 0, 0.20), //shadow for button
                        blurRadius: 2,
                      spreadRadius: -1
                    ) //blur radius of shadow
                  ]

              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(ProdName, style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                    Text(totall, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
    ],

                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        offset: Offset(0, 4),
                        color: Color.fromRGBO(0, 0, 0, 0.20), //shadow for button
                        blurRadius: 2
                    ) //blur radius of shadow
                  ]

              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Image.asset("assets/virtual.png", scale: 2.4),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text("Virtual Demo", style: TextStyle(fontSize: 15),),
                      )
                  ],
                ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 70,
                            width: 2.5,
                            child: Container(
                              child: VerticalDivider(
                                color: Colors.grey,
                                thickness: 0,
                              ),

                            ),
                          ),
                        ],
                      ),
                    ),

                  Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Image.asset("assets/onsite.png", scale: 2.2),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text("On Site Demo", style: TextStyle(fontSize: 15),),
                    )

                  ],
                )
                  ]

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

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


