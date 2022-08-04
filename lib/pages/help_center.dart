
import 'package:devthread/Test/buttontest.dart';
import 'package:flutter/material.dart';
class HelpCenter extends StatefulWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.arrow_back_outlined,
              size: 30,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Help Center",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25,
              ),
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              TopContainer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8,bottom: 16,top: 16),
                    child: Text("Popular Topics",
                    style: TextStyle(
                    fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                     PageContent(),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}

class TopContainer extends StatelessWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.2,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFc33bff),
            Color(0xFF3aa0d8)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            width: MediaQuery.of(context).size.width*0.8,
            height: MediaQuery.of(context).size.height*0.05,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white
            ),
            child: Container(
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.height*0.05,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: TextField(
                  decoration:InputDecoration(
                    border: InputBorder.none,
                    hintText: "Tap to Search",
                    icon: Icon(Icons.search_outlined,
                    color: Colors.black54,),
                  ) ,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PageContent extends StatelessWidget {
  const PageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BoxContent(context, "I am unable to login to my account", "You can recover your password..."),
          SizedBox(height: 20,),
          BoxContent(context, "Something is wrong with my wishlist", "Sorry! We are not able to..."),
          SizedBox(height: 20,),
          BoxContent(context, "I want to change my email id", "To change Email id, go to change..."),
          SizedBox(height: 20,),
          BoxContent(context, "Will you refund the extra charge if the product is returned", "If you tell us, with in 1 or 2 working..."),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomIconButtons("icons/telephone.png","Call"),
              BottomIconButtons("icons/Message.png","Chat"),
              BottomIconButtons("icons/emails.png","Mail"),
            ],
          ),


        ],
      ),
    );
  }
}

Widget BoxContent(BuildContext context, String querry, String hintText){
  return SingleChildScrollView(
    child: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.9,
         // height: MediaQuery.of(context).size.height*0.13,
          decoration: BoxDecoration(
            //color: Colors.orange,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(width: 2,color: Colors.purpleAccent),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16,right: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(querry,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.6,
                      height: MediaQuery.of(context).size.height*0.05,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: hintText,
                        ),
                      ),
                    ),
                    TextButton(onPressed: (){},
                      child:Text("show more",
                        style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget BottomIconButtons(String _imagePath, String _text){
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16,right: 16),
          child: Container(
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.purple.shade100,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  InkWell(
                    child: Image.asset(_imagePath),
                  ),
                  Text(_text,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.purpleAccent.shade700,
                  ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
}

