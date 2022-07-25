// import 'package:flutter/material.dart';
// class FirstPage extends StatefulWidget {
//   const FirstPage({Key? key}) : super(key: key);
//
//   @override
//   State<FirstPage> createState() => _FirstPageState();
// }
//
// class _FirstPageState extends State<FirstPage> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SafeArea(
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text("Hello"),
//             centerTitle: true,
//             elevation: 0,
//             backgroundColor: Colors.greenAccent,
//             leading: IconButton(
//               onPressed: (){},/////////////  here you can add functinality of button
//                icon: Icon(Icons.location_on,
//                size: 40,),
//             ),
//             actions: <Widget>[
//               Padding(padding:EdgeInsets.only(right: 15),
//                 child: GestureDetector(
//                   onTap: (){},
//                   child: Icon(Icons.circle_notifications_outlined,
//                   size: 40,),
//                 )
//               ),
//               Padding(padding:EdgeInsets.only(right: 15),
//                   child: GestureDetector(
//                     onTap: (){},
//                     child: Icon(Icons.,
//                       size: 40,),
//                   )
//               ),
//             ],
//           ),
//       ),
//       ),
//     );
//   }
// }

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
    //var Width= MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
              Padding(padding:EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: (){},
                    child: Icon(Icons.circle_notifications_outlined,
                      size: 40,),
                  )
              ),
              Padding(padding:EdgeInsets.only(right: 15),
                  child: GestureDetector(
                    onTap: (){},
                    child: Icon(Icons.person,
                      size: 40,),
                  )
              ),
            ],
          ),
        body:

                    Stack(
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
                            Positioned(
                              top: 120,
                              child:MyContainer2(),
                            ),
                        Positioned(
                            top: 300,
                              child: MyContainer3(),
                        ),
                        Positioned(
                          top: 400,
                          child: Row(
                            children: [
                              Text("Mobile Application",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),),
                            ],
                          ),
                        ),


                      ],


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
      height: MediaQuery.of(context).size.height*0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft:Radius.circular(0),
          topRight: Radius.circular(0),
          bottomRight: Radius.circular(36),
          bottomLeft: Radius.circular(36),
        ),
       // borderRadius: BorderRadius.only(bottomRight: Radius.circular(2)),
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
     options: CarouselOptions(autoPlay: true),
   ),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(30),
    //   color: Colors.redAccent,
    //     image: DecorationImage(
    //       image: AssetImage(
    //         _imagePaths.toString(),
    //       ),
    //       fit: BoxFit.fill,
    //       scale: 5,
        );
     //  ),
   // );
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
            fontSize: 25,
          ),),
        ),
        //alignment: Alignment.center,
        //margin: EdgeInsets.all(20),
        // color: Colors.redAccent,
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




