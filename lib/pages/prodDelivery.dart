import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDelivery extends StatelessWidget {
  const ProductDelivery({Key? key}) : super(key: key);

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
                Text("Product Delivery", style: TextStyle(fontSize: 20),),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(254,141,65, 1),
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),

                        Image.network("https://cdn.pixabay.com/photo/2017/10/04/18/09/laptop-2817092_1280.png", scale: 10),
                        SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text("We Deliver ON TIME", style: TextStyle(color: CupertinoColors.white, fontSize: 18),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text("DevThread is always committed to innovate your product and also committed to delivering your product on or before the deadline.", style: TextStyle(color: CupertinoColors.white, fontSize: 12), textAlign: TextAlign.center,),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 28.0, bottom: 56),
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
