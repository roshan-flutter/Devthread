import 'package:flutter/material.dart';

class AddedFeatures extends StatefulWidget {
  const AddedFeatures({Key? key}) : super(key: key);

  @override
  State<AddedFeatures> createState() => _AddedFeaturesState();
}

class _AddedFeaturesState extends State<AddedFeatures> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomBar(context, "20,700.00"),
        body: Body(),
      ),
    );
  }
}
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width*0.9,
        height: MediaQuery.of(context).size.height*0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            width: 2,
            color: Colors.black26,
          ),
        ),
        child: ListView(
            children:[ Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16,top: 16,bottom: 8,right: 16),
                  child: Text("Added Features",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    height: 2,
                    color: Colors.black38,
                  ),
                ),
                SizedBox(height: 30,),
                FeatureTile(context,"Service","500","assets/check_color.png"),
                SizedBox(height: 20,),
                FeatureTile(context,"Home","500","assets/check_color.png"),
                SizedBox(height: 20,),
                FeatureTile(context,"Announcement","500","assets/check_color.png"),
                SizedBox(height: 20,),
                FeatureTile(context,"Search","500","assets/check_color.png"),
                SizedBox(height: 20,),
                FeatureTile(context,"Vision","500","assets/check_color.png"),
                SizedBox(height: 20,),
                FeatureTile(context,"About Us","500","assets/check_color.png"),




              ],
            ),
            ]
        ),
      ),
    );
  }
}

Widget FeatureTile(BuildContext context, String feature,String amount, String imagePath){
  return Center(
    child: Container(
      width: MediaQuery.of(context).size.width*0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          width: 2,
          color: Colors.black38,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.2,
            height: MediaQuery.of(context).size.height*0.1,
            // color: Colors.red,
            decoration: BoxDecoration(
              //color: Colors.red,
              border: Border(
                right: BorderSide(width: 2,color: Colors.black38),
              ),
            ),
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(feature,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("₹ "+amount,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              //SizedBox(width: MediaQuery.of(context).size.width*0.05,),

            ],
          ),
          InkWell(
            child: Image.asset(imagePath,
              width: 70,
              height: 80,
            ),
          ),
        ],
      ),
    ),
  );
}
Widget BottomBar(BuildContext context, String amount ){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height*0.1,
    child: Padding(
      padding: const EdgeInsets.only(left: 16,right: 20,
          bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text("Total Amount",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10,),
              Text("₹ "+amount,
                style: TextStyle(
                  // color: Colors.blueAccent,
                    fontSize: 20
                ),
              ),
            ],
          ),
          Container(
            width: 80,
            height: 40,
            decoration: BoxDecoration(
              // color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                colors: [Color(0xFFc33bff),
                  Color(0xFF3aa0d8)],
              ),
            ),
            child: Center(
              child: Text("Buy",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,

                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}