import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tickets extends StatefulWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  _TicketsState createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  final double coverHeight = 120;
  final double profileHeight = 110;

  String tickedID = "DV20220629121920";
  String raisedTime = "26/06/2022 12:19:20";
  String prodID = "JVTORD20220628152332";
  String severity = "High";
  String status = "Pending";
  String desc = "Cjifxjcjciiccovov";

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              topScreen(),

              Padding(
                padding: const EdgeInsets.fromLTRB(12.0,125,12.0,0),
                child: ticketInfo(tickedID, raisedTime, prodID, severity, status, desc),
              ),
            ],
          )
      ),
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
    // height: 40,
    // width: 20,

    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Image.asset("assets/ticket.png", height: 70,),
            ),
            //Text('Demo', style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text('Raised Ticket', style: TextStyle(color: Colors.purpleAccent, fontSize: 20, fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ],
    ),

    padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 5),
    decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(25),
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



  Widget ticketInfo(tickedID, raisedTime, prodID, severity, status, desc) => Container(
    decoration: BoxDecoration(
      color: Colors.white,

      borderRadius: BorderRadius.circular(10),

      border: Border.all(
        width: 1.5,
          color: Colors.purpleAccent,
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
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 14),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: [
                Expanded(child: Text("TICKET ID", style: TextStyle(color: Colors.black87),)),
                Text(tickedID, style: TextStyle(color: Colors.blue,))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: [
                Expanded(child: Text("RAISED TIME", style: TextStyle(color: Colors.black),)),
                Text(raisedTime, style: TextStyle(color: Colors.black),)
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: [
                Expanded(child: Text("PRODUCT ID", style: TextStyle(color: Colors.black),)),
                Text(prodID, style: TextStyle(color: Colors.black))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: [
                Expanded(child: Text("SEVERITY", style: TextStyle(color: Colors.black),)),
                Text(severity, style: TextStyle(color: Colors.black),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: [
                Expanded(child: Text("STATUS", style: TextStyle(color: Colors.black),)),
                Text(status, style: TextStyle(color: Colors.orange),)
              ],
            ),
          ),
          Row(
            children: [
              Expanded(child: Text("DESCRIPTION", style: TextStyle(color: Colors.black),)),
              Text(desc, style: TextStyle(color: Colors.orange),)
            ],
          ),
        ],
      ),
    ),
  );


}