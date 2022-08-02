import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:devthread/Test/buttontest.dart';
import 'package:devthread/button/button.dart';
import 'package:flutter/material.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);
  @override
  State<FirstPage> createState() => _FirstPageState();
}
class _FirstPageState extends State<FirstPage> {
  var Title="Mandha";
  final _imagePaths=[
    'assets/click.png',
    'assets/playstore.png'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
         extendBodyBehindAppBar: true,
            appBar: AppBar(
              title: Text(Title,
              ),
              elevation: 0,
             backgroundColor: Colors.transparent,

              leading: IconButton(
                onPressed: (){},/////////////  here you can add functinality of button
                icon: Icon(Icons.location_on,
                  size: 40,),
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: InkWell(
                              splashColor: Colors.black26,
                              onTap: (){
                                print("Button was tapped");
                              },
                              child:CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15,
                                child:  Image.asset("icons/notification.png",
                                  width: 30,
                                  height: 30,
                                ),
                              )
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: InkWell(
                            splashColor: Colors.black26,
                            onTap: (){
                              print("Button was tapped");
                            },
                            child:CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 15,
                              child:  Image.asset("icons/mancir.png",
                                width: 30,
                                height: 30,
                              ),
                            )
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
              ],
            ),
          bottomNavigationBar: BottomBar(),
          body: Stack(
                        children:<Widget> [
                          Row(
                            children: [
                              Column(
                                  children: [
                                      MyContainer1(),
                                  ],
                                ),
                            ],
                          ),
                              ListView(
                                children:[ Column(
                                  children: [
                                    MyContainer2(),
                                    MyContainer3(),
                                    MyContainer4(),
                                    SizedBox(height: 10,),
                                    MyContainer5(),
                                    SizedBox(height: 20,),
                                    MyContainer4(),
                                    MyContainer5(),

                                  ],
                                ),
      ],
                              ),
                        ],
                      ),
        ),
      ),
    );
  }
}

class MyContainer1 extends StatelessWidget {
  const MyContainer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(0),
          topRight: Radius.circular(0),
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(50),
        ),
        gradient: LinearGradient(
          colors: [Color(0xFF3aa0d8),
            Color(0xFFc33bff)],
        ),
      ),
    );
  }
}
class MyContainer2 extends StatefulWidget {
  const MyContainer2({Key? key}) : super(key: key);



  @override
  State<MyContainer2> createState() => _MyContainer2State();
}

class _MyContainer2State extends State<MyContainer2> {
  @override
  Widget build(BuildContext context) {
    final _imagePaths=[
      "assets/1.jpg",
      "assets/2.jpg",
      "assets/3.jpg",
    ];
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      height: MediaQuery.of(context).size.height*0.18,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: 20),
      child: CarouselSlider(
     items:_imagePaths.map((imagepath){
       return Container(
         //margin: EdgeInsets.all(10),
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         color: Colors.transparent,

         child: Image.asset(imagepath,
           //fit: BoxFit.fill,
           width: MediaQuery.of(context).size.width,
         ),
       );
     }).toList(),
     options: CarouselOptions(autoPlay: true,
     aspectRatio: 16/9,
       enlargeCenterPage: true,
       enableInfiniteScroll: true,
       height: 250,
       autoPlayCurve: Curves.fastOutSlowIn,
       autoPlayAnimationDuration:const Duration(milliseconds: 1000),
     ),
   ),
        );
  }
}

class MyContainer3 extends StatelessWidget {
  const MyContainer3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:20,right: 20),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Ready Products",
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),),
        ),
        width: MediaQuery.of(context).size.width*.9,
        height: 50,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFc33bff),Color(0xFF3aa0d8)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            ),
            borderRadius: BorderRadius.circular(6)
        ),
      ),
    );
  }
}

class MyContainer4 extends StatefulWidget {
  const MyContainer4({Key? key}) : super(key: key);

  @override
  State<MyContainer4> createState() => _MyContainer4State();
}

class _MyContainer4State extends State<MyContainer4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: MediaQuery.of(context).size.height*0.35,
        width: MediaQuery.of(context).size.width*0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white10,
          border: Border.all(width: 1,
          color: Colors.black12,
          ),
        ),
        child: Column(
         // crossAxisAlignment: CrossAxisAlignment.,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 16,right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
           //   crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Mobile Applications",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                  //SizedBox(width: MediaQuery.of(context).size.width*0.36,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonTest()));
                  },
                    child: Text("See All",
                      style: TextStyle(
                        color: Color(0xFF3aa0d8),
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ],
                  ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
            MobAppButton("icons/first-aid-bag.png","Health","print(Button was tapped)"),
                  MobAppButton("icons/book.png","Education","Print(Button was tapped)"),
                  MobAppButton("icons/grocery.png","Grocery","Print(Button was tapped)"),
                  MobAppButton("icons/dish.png","Food","Print(Button was tapped)"),
                  MobAppButton("icons/pay.png","Pay","Print(Button was tapped)"),
                ],
              ),

            ),
            Container(
              //alignment: FractionalOffset.center,
              child: Padding(
                padding: const EdgeInsets.only(left: 16,right: 16),
                child: Row(
                  //   crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Web Application",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    //SizedBox(width: MediaQuery.of(context).size.width*0.36,),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonTest()));
                    },
                      child: Text("See All",
                        style: TextStyle(
                          color: Color(0xFF3aa0d8),
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MobAppButton("icons/tours.png","Tours","Print(Button was tapped)"),
                  MobAppButton("icons/schools.png","Schools","Print(Button was tapped)"),
                  MobAppButton("icons/loans.png","Loans","Print(Button was tapped)"),
                  MobAppButton("icons/factory.png","Industries","Print(Button was tapped)"),
                  MobAppButton("icons/hotel.png","Hotels","Print(Button was tapped)"),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}

class MyContainer5 extends StatefulWidget {
  const MyContainer5({Key? key}) : super(key: key);

  @override
  State<MyContainer5> createState() => _MyContainer5State();
}

class _MyContainer5State extends State<MyContainer5> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Recent Build Products",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  colors: [Color(0xFFc33bff),Color(0xFF3aa0d8)],
            ),

      ),
                    child: TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ButtonTest()));
                    },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15,),
                          child: Text(
                    "See All",
                            style: TextStyle(
                              //color: Colors.transparent,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                    ),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      width: MediaQuery.of(context).size.width*0.9,
      height: 60,
      decoration: BoxDecoration(
         color: Colors.white10,
          border: Border.all(width: 2,
          color: Colors.black12,),
          borderRadius: BorderRadius.circular(15)
      ),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.09,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              width: 1,
              color: Colors.black26
            ),
          ),
          //borderRadius: BorderRadius.circular(5)
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8,right: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text("Exciting Coupans avilable",
                    style: TextStyle(
                    fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                    //height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(300),
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: InkWell(
                            splashColor: Colors.black26,
                            onTap: (){
                              print("Button was tapped");
                            },
                            child: Image.asset("icons/home.png",
                              width: 30,
                              //height: 35,
                            ),
                          ),
                        ),
                        Text("Home",
                          style: TextStyle(fontSize: 12,
                              fontWeight: FontWeight.w700,),),
                      ],
                    ),

              ),
                    Container(
                     // height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(300),
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: InkWell(
                              splashColor: Colors.black26,
                              onTap: (){
                                print("Button was tapped");
                              },
                              child: Image.asset("icons/dashboard.png",
                                width: 30,
                               // height: 35,
                              ),
                            ),
                          ),
                          Text("Dashboard",
                            style: TextStyle(fontSize: 12,
                                fontWeight: FontWeight.w700,),),
                        ],
                      ),

                    ),
                    Container(
                    //  height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(300),
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: InkWell(
                              splashColor: Colors.black26,
                              onTap: (){
                                print("Button was tapped");
                              },
                              child: Image.asset("icons/chat.png",
                                width: 30,
                               // height: 35,
                              ),
                            ),
                          ),
                          Text("Chat",
                            style: TextStyle(fontSize: 12,
                            fontWeight: FontWeight.w700),),
                        ],
                      ),

                    ),
                    Container(
                     // height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(300),
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: InkWell(
                              splashColor: Colors.black26,
                              onTap: (){
                                print("Button was tapped");
                              },
                              child: Image.asset("icons/favourite.png",
                                width: 30,
                               // height: 35,
                              ),
                            ),
                          ),
                          Text("Favourite",
                            style: TextStyle(fontSize: 12,
                            fontWeight: FontWeight.w700),),
                        ],
                      ),

                    ),
                    Container(
                    //  height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(300),
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: InkWell(
                              splashColor: Colors.black26,
                              onTap: (){
                                print("Button was tapped");
                              },
                              child: Image.asset("icons/setting.png",
                                width: 30,
                              //  height: 35,
                              ),
                            ),
                          ),
                          Text("Settings",
                            style: TextStyle(fontSize: 12,
                            fontWeight: FontWeight.w700),),
                        ],
                      ),

                    ),
                  ],

                ),
            ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}



