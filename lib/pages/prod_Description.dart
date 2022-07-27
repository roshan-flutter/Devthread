import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class prodDescription extends StatefulWidget {
  const prodDescription({Key? key}) : super(key: key);

  @override
  _prodDescriptionState createState() => _prodDescriptionState();
}

class _prodDescriptionState extends State<prodDescription> {
  List<String> litems = ["Service Validity 6 Months","Platform: Android & IOS","Security: SQRT\n₹2,500.00","Speed: SPD\n₹500.00", "Backend: BB\n₹1,200.00", "UI/UX: DS\n₹3,000.00", "Frontend: FF\n₹2,500.00"];
  final borderSide = BorderSide(color: Colors.black);
  final double totAmount = 20700.00;

  // final int listLength = litems.length;
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();
    }

    return Scaffold(
      body: ListView(
          // height: MediaQuery.of(context).size.height+500,
          // width: MediaQuery.of(context).size.width,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Description", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black)),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 35,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("Basic Info", style: TextStyle(fontSize: 18),),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 8,
                    )
                  ],
                ),

                Row(
                  children: [
                      Container(
                        height: 460,
                        width: MediaQuery.of(context).size.width-20,
                        child: infoList(),
                      ),
                  ],
                ),

                Row(
                  children: [
                    Text("Added Features", style: TextStyle(fontSize: 18)),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        thickness: 1.2,
                      ),
                    ),
                  ],
                ),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width-20,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  right: borderSide
                                ),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                                    child: Image.asset('assets/responsive.png'),
                                  )
                                ],

                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:[
                                    Text("Services", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),

                                  ]

                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Image.asset('assets/responsive.png', height: 90, fit: BoxFit.contain,)
                              ],
                            ),
                          ],
                        ),

                      )
                    ],
                  ),
                )

              ],
            ),
          )
        ],

      ),
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
      )
    );
  }

  ListView infoList() {
    return ListView.builder(
      itemCount: litems.length,
      itemBuilder: (BuildContext contextt, int index){
        return IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 3.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 7.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/responsive.png')
                          ],
                        ),
                      )
                  ),

                  Expanded(
                      flex: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            left: borderSide
                          ),

                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(litems[index], style: TextStyle(color: Colors.black, fontSize: 16),),
                            ),
                          ],
                        ),
                      )
                  )

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
