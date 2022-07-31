import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);


  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  List<String> litems = ["Services", "Home", "Announcements", "Search", "Vision", "About Us"];
  List<String> litems2 = ["None"];
  List<String> litems3 =["DOMAIN", "NO", "HOSTING", "NO", "PLAYSTORE SUPPORT", "NO", "BLAH", "NO", "BLAH-BLAH","NO"];
  static const double bottomNavHeight = 84;
  static const double appbarr = 70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appbarr),
        child: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.green.shade50,
          title: Top(),
          ),
      ),

      body: ListView(
        children: <Widget>[

          // Padding(
          //   padding: const EdgeInsets.only(top: 32.0, left: 12, right: 12),
          //   child: Container(
          //     height: 50,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.only(
          //           topRight: Radius.circular(15),
          //           topLeft: Radius.circular(15)
          //         ),
          //         gradient: LinearGradient(
          //           // begin: Alignment.topCenter,
          //           // end: Alignment.bottomCenter,
          //           colors: [
          //             Color(0xFF3aa0d8),
          //             //Colors.pink,
          //             Color(0xFFc33bff),
          //
          //           ],
          //         )
          //     ),
          //     child: Padding(
          //       padding: const EdgeInsets.only(left: 8.0),
          //       child: Row(
          //         crossAxisAlignment: CrossAxisAlignment.center,
          //         children: [
          //           Text("ADVANCED FEATURES", style: TextStyle(color: Colors.white, fontSize: 18),),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),



          header("ADVANCED FEATURES"),
          SizedBox(
                height: litems.length * 27,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15)
                      ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27), //shadow for button
                              blurRadius: 10,
                            offset: Offset(0,6),
                          ) //blur radius of shadow
                        ]

                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12.0, top: 10),
                        child: cardView(litems, 1),
                      )),
                )
            ),

          header("UNSELECTED FEATURES"),
          SizedBox(
              height: litems2.length * 33,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15)
                      ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.27), //shadow for button
                            blurRadius: 10,
                            offset: Offset(0,6),
                          ) //blur radius of shadow
                        ]

                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12.0, top: 10),
                      child: cardView(litems2, 0),
                    )),
              )
          ),

          header("ADDITIONAL SERVICES"),
          SizedBox(
              height: litems3.length * 25,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green.shade50,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15)
                      ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.27), //shadow for button
                            blurRadius: 10,
                            offset: Offset(0,6),
                          ) //blur radius of shadow
                        ]

                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12.0, top: 10),
                      child: cardView(litems3, 0),
                    )),
              )
          ),

          SizedBox(
            height: 20,
          )

        ],
      ),



        bottomNavigationBar: Container(
          height: bottomNavHeight,

          color: Colors.green.shade50,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [

                Container(
                  width: MediaQuery.of(context).size.width- 24,
                    height: 45,

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
                        child:Padding(
                          padding: const EdgeInsets.only(bottom: .0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                onSurface: Colors.transparent,
                                shadowColor: Colors.transparent,
                                //make color or elevated button transparent
                              ),
                              onPressed: (){                              },
                              child: Text("Checkout", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                              ),
                        )
                    )
                )
              ],
            ),
          ),
        )
    );
  }

  ListView cardView(litems, num) {
    return ListView.builder(
      itemCount: litems.length,
      itemBuilder: (BuildContext contextt, int index){
        return Padding(
          padding: const EdgeInsets.only(bottom: 3.0),
          child: Container(
            decoration: BoxDecoration(
              //border: Border.all(color: Colors.black),
              //borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Row(
              children: [
                Expanded(
                    flex: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        // border: Border(
                        //     left: borderSide
                        // ),

                      ),
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
                    //Text("₹500.00")
                    Text( (() {
                      if(num == 1) {
                        return "₹500.00";
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
    padding: const EdgeInsets.only(top: 32.0, left: 12, right: 12),
    child: Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15)
          ),
          gradient: LinearGradient(
            // begin: Alignment.topCenter,
            // end: Alignment.bottomCenter,
            colors: [
              Color(0xFF3aa0d8),
              //Colors.pink,
              Color(0xFFc33bff),

            ],
          )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(text, style: TextStyle(color: Colors.white, fontSize: 18),),
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
