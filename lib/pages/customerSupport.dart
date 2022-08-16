import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomerSupport extends StatelessWidget {
  const CustomerSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Container(
            width: MediaQuery.of(context).size.width-40,
            decoration: BoxDecoration(
              color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    //offset: Offset(0, 2),
                      color: Color(0xCE201F1F).withOpacity(0.15),
                      spreadRadius: 5,
                      blurRadius: 10
                  )
                ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text("Customer Support", style: TextStyle(fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(168,91,247, 1),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          //offset: Offset(0, 2),
                            color: Color(0xCE201F1F).withOpacity(0.15),
                            spreadRadius: 5,
                            blurRadius: 10
                        )
                      ],

                    ),
                    child: Column(
                      children: [

                        Image.network("https://cdni.iconscout.com/illustration/premium/thumb/customer-service-operator-5151976-4309545.png", scale: 3,),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Hassle free Contact", style: TextStyle(color: CupertinoColors.white, fontSize: 18),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text("Our customer can contact us through different modes of communication anytime. We have an inbuilt chat system, call, mail, and ask a query. Our team will get in touch as early as possible", style: TextStyle(color: CupertinoColors.white, fontSize: 12), textAlign: TextAlign.center,),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("click.png", scale: 2,),
                              Text("DevThread", style: TextStyle(color: CupertinoColors.white, fontSize: 20, fontWeight: FontWeight.bold))
                            ],
                          ),
                        )

                      ],
                    ),
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
