import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final double coverHeight = 220;
  final double profileHeight = 110;
  //TODO- MAKE A MAP FOR THESE THREE LISTS!!
  static const _iconTypes = <IconData>[
    Icons.edit,
    Icons.lock_outline,
    Icons.sticky_note_2,
    Icons.supervisor_account_sharp,
    Icons.help
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            children: [
              topScreen(),

              Positioned(
                top: profileHeight+30,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60)
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(243,202,218, 1),
                          borderRadius: BorderRadius.circular(15)

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 30),
                          child: Row(

                            children: [
                              Image.asset("assets/credit.png", scale: 0.6,),
                              SizedBox(width: 16,),
                              Text("Payments", style: TextStyle(color: Colors.white, fontSize: 24),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width - 50,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(87,194,188, 1),
                            borderRadius: BorderRadius.circular(15)

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
                          child: Row(
                            children: [
                              Image.asset("assets/progress.png", scale: 1,),
                              SizedBox(width: 16,),
                              Text("Project Progress", style: TextStyle(color: Colors.white, fontSize: 24),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width - 50,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(14,160,175, 1),
                            borderRadius: BorderRadius.circular(15)

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
                          child: Row(

                            children: [
                              Image.asset("assets/orders.png", scale: 0.8,),
                              SizedBox(width: 16,),
                              Text("My Orders", style: TextStyle(color: Colors.white, fontSize: 24),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width - 50,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(0,121,134, 1),
                            borderRadius: BorderRadius.circular(15)

                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
                          child: Row(

                            children: [
                              Image.asset("assets/cancelled.png", scale: 2,),
                              SizedBox(width: 16,),
                              Flexible(child: Text("Cancelled Order", style: TextStyle(color: Colors.white, fontSize: 24),))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          


        ],
      ),


    );
  }

  Widget topScreen() {
    const double top = 30;
    return Container(
      width: double.infinity,
      height: coverHeight,
      decoration: BoxDecoration(
          color: Colors.white,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.purpleAccent,
              // Color(0xFFc33bff).withOpacity(0.5),
              Colors.lightBlueAccent,
              // Color(0xFF3aa0d8).withOpacity(0.5)
            ],
          )
      ),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Text("Dashboard", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
      ),

    );
  }

}