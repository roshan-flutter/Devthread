import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    var selectRange= RangeValues(0, 1);
    var newRange =RangeValues(0, 10);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(width: 10,),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title:  Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
            ),
            //alignment: Alignment.topLeft,
            width: 280,
            height: 60,
            // color: Colors.white,
            child: Column(
              //  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 0),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: 'Search here',
                    icon: Icon(Icons.search_outlined),
                  ),
                ),
              ],
            ),
          ),
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
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
                        top:110,
                        child: ImageBanner()),
                  Positioned(
                    top: 290,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width:300,
                        height: 40,
                       // color: Colors.red,
                        child: SliderContainer()),
                       // SizedBox(height: 0.1,),

                        Column(
                          children: [
                            TextButton.icon(

                                onPressed: (){},
                                icon: Icon(Icons.filter_list_sharp,
                            color: Colors.black,
                            size: 20,),
                              label:   Text("Filter",
                            style: TextStyle(color: Colors.black54),),),

                          ],
                        ),
                        // RangeSlider(values: selectRange, onChanged: (RangeValues){
                        //   setState(()=>selectRange=newRange);
                        // }),

                      ],
                    ),
                     // IconButton(onPressed: (){}, icon: Icon(Icons.filter_list_sharp))
                  ),
                    // Positioned(
                    //     top: 350,
                    //     child: Healthyon()),
                  ],
                ),
              ),
           Container(
             child: Column(
               children: [
                 Column(
                       children: [
                         Healthyon(),
                         SizedBox(height:10 ,),
                         HealthCare(),
                       ],
                     ),

               ],
             ),
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
// class CostumeSearchDelegate extends SearchDelegate{
//   List<String> searchItems=[
//     'Home',
//     'Dashboard',
//     'Favourites',
//     'Loans',
//   ];
//   @override
//   List<Widget>? buildActions(BuildContext context)=> [
//   IconButton(
//       onPressed: (){
//         query='';
//       },
//   icon:const Icon(Icons.clear))
//   ];
//
//   @override
//   Widget? buildLeading(BuildContext context) =>IconButton(onPressed: (){
//     close(context, null);
//   },
//       icon:const Icon(Icons.arrow_back_outlined));
//
//
//   @override
//   Widget buildResults(BuildContext context) {
//     List <String> matchQuerry =[];
//     for (var item in searchItems)
//       {
//         if(item.toLowerCase().contains(query.toLowerCase())){
//           matchQuerry.add(item);
//         }
//         return ListView.builder(itemCount: matchQuerry.length,
//         itemBuilder: (context,index){
//           var result =matchQuerry[index];
//           return ListTile(
//             title: Text(result),
//           );
//         },
//         );
//       }
//   }
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<String> matchQuerry =[];
//     for (var item in searchItems)
//     {
//       if(item.toLowerCase().contains(query.toLowerCase())){
//         matchQuerry.add(item);
//       }
//       return ListView.builder(
//         itemCount: matchQuerry.length,
//         itemBuilder: (context,index){
//           var result =matchQuerry[index];
//           return ListTile(
//             title: Text(result),
//           );
//         },
//       );
//     }
//
//   }
//


class ImageBanner extends StatefulWidget {
  const ImageBanner({Key? key}) : super(key: key);



  @override
  State<ImageBanner> createState() => _ImageBannerState();
}

class _ImageBannerState extends State<ImageBanner> {
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


class SliderContainer extends StatefulWidget {
  const SliderContainer({Key? key}) : super(key: key);

  @override
  State<SliderContainer> createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
  static double _lowervalue=10000;
  static double _uppervalue=1000000;
  RangeValues values=RangeValues(_lowervalue, _uppervalue);
  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      activeColor: Colors.blue.shade700,
        inactiveColor: Colors.black26,
        labels: RangeLabels(values.start.toString(), values.end.toString()),
        min: _lowervalue,
        max: _uppervalue,
        values: values,
        onChanged: (val){
        setState(() {
          values=val;
        });
        }
        );
  }
}

class Healthyon extends StatefulWidget {
  const Healthyon({Key? key}) : super(key: key);

  @override
  State<Healthyon> createState() => _HealthyonState();
}

class _HealthyonState extends State<Healthyon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.95,
      //color: Colors.red.shade100,
      decoration: BoxDecoration(
        border: Border.all(width: 2,color: Colors.black38),
      borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8,top: 8,bottom: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Healthy On",
                    style: TextStyle(fontSize: 15),),
                    Text("Android & ios",
                    style: TextStyle(fontSize: 10),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 60,
                    height: 25,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(10),),
                     gradient: LinearGradient(
                       colors: [Color(0xFFc33bff),Color(0xFF3aa0d8)],
                     )
                   ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("1.0",style: TextStyle(fontSize: 15,color: Colors.white),),
                        Icon(Icons.star,
                        size: 18,
                        color: Colors.white,),
                      ],
                    )
                  ),
                ),
              ],
            ),
      Container(
      width: MediaQuery.of(context).size.width*0.89,
      color: Colors.black26,
      height: 2,
      ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.greenAccent,
                          height: MediaQuery.of(context).size.height*0.18,
                          width: 100,
                          child: Image.asset("assets/1.jpg",
                              scale: 1,),
                        ),
                      ],
                    ),
                  ],
                ),

                  //color: Colors.greenAccent,
                   Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.security,
                            size: 12,),
                            Text("Security"),
                          ],
                        ),
                        Text("SQRT",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),),
                        Row(
                          children: [
                            Icon(Icons.handyman,
                              size: 12,),
                            Text("UI/UX"),
                          ],
                        ),
                        Text("DS",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8,bottom: 8),
                          child: Container(
                            width: 70,
                            height: 50,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text("₹20,700.00",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),),
                                ),
                                Text("Start",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),),
                                Text("6 featured list",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                  ),),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10),),
                              border: Border.all(width: 1,color: Colors.black54),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF3aa0d8),Color(0xFFc33bff),
                                ],
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(width: 3,),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.speed,
                            size: 12,),
                          Text("Speed"),
                        ],
                      ),
                      Text("SPD",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),),
                      Row(
                        children: [
                          Icon(Icons.check_box,
                            size: 12,),
                          Text("Delivary"),
                        ],
                      ),
                      Text("21 Days",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8,bottom: 8),
                        child: Container(
                          width: 70,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text("₹21,700.00",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),),
                                ),
                                Text("Pro",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),),
                                Text("5 featured list",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                  ),),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10),),
                              border: Border.all(width: 1,color: Colors.black54),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF3aa0d8),Color(0xFFc33bff),
                                ],
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 3,),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.circle_outlined,
                            size: 12,),
                          Text("Backend"),
                        ],
                      ),
                      Text("BB",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),),
                      Row(
                        children: [
                          Icon(Icons.check_box,
                            size: 12,),
                          Text("Frontend"),
                        ],
                      ),
                      Text("FF",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8,bottom: 8),
                        child: Container(
                          width: 70,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text("₹24,700.00",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),),
                                ),
                                Text("Ultra Pro",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),),
                                Text("6 featured list",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                  ),),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10),),
                              border: Border.all(width: 1,color: Colors.black54),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF3aa0d8),Color(0xFFc33bff),
                                ],
                              ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("Cancellation Policy",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}




class HealthCare extends StatefulWidget {
  const HealthCare({Key? key}) : super(key: key);

  @override
  State<HealthCare> createState() => _HealthCareState();
}

class _HealthCareState extends State<HealthCare> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.95,
      //color: Colors.red.shade100,
      decoration: BoxDecoration(
        border: Border.all(width: 2,color: Colors.black38),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8,top: 8,bottom: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Healthcare D1",
                      style: TextStyle(fontSize: 15),),
                    Text("Android",
                      style: TextStyle(fontSize: 10),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 60,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10),),
                          gradient: LinearGradient(
                            colors: [Color(0xFFc33bff),Color(0xFF3aa0d8)],
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("3.8",style: TextStyle(fontSize: 15,color: Colors.white),),
                          Icon(Icons.star,
                            size: 18,
                            color: Colors.white,),
                        ],
                      )
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.89,
              color: Colors.black26,
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.greenAccent,
                          height: MediaQuery.of(context).size.height*0.18,
                          width: 100,
                          child: Image.asset("assets/1.jpg",
                            scale: 1,),
                        ),
                      ],
                    ),
                  ],
                ),

                //color: Colors.greenAccent,
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.security,
                            size: 12,),
                          Text("Security"),
                        ],
                      ),
                      Text("Security",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),),
                      Row(
                        children: [
                          Icon(Icons.handyman,
                            size: 12,),
                          Text("UI/UX"),
                        ],
                      ),
                      Text("Design",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8,bottom: 8),
                        child: Container(
                          width: 70,
                          height: 50,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text("₹0.00",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),),
                              ),
                              Text("Start",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),),
                              Text("6 featured list",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                ),),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10),),
                              border: Border.all(width: 1,color: Colors.black54),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF3aa0d8),Color(0xFFc33bff),
                                ],
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 3,),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.speed,
                            size: 12,),
                          Text("Speed"),
                        ],
                      ),
                      Text("Speed",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),),
                      Row(
                        children: [
                          Icon(Icons.check_box,
                            size: 12,),
                          Text("Delivary"),
                        ],
                      ),
                      Text("29 Days",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8,bottom: 8),
                        child: Container(
                          width: 70,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text("₹0.00",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),),
                                ),
                                Text("Pro",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),),
                                Text("5 featured list",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                  ),),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10),),
                              border: Border.all(width: 1,color: Colors.black54),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF3aa0d8),Color(0xFFc33bff),
                                ],
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 3,),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.circle_outlined,
                            size: 12,),
                          Text("Backend"),
                        ],
                      ),
                      Text("Backend",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),),
                      Row(
                        children: [
                          Icon(Icons.check_box,
                            size: 12,),
                          Text("Frontend"),
                        ],
                      ),
                      Text("Frontend",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8,bottom: 8),
                        child: Container(
                          width: 70,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text("₹24,700.00",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),),
                                ),
                                Text("Ultra Pro",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),),
                                Text("6 featured list",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                  ),),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10),),
                            border: Border.all(width: 1,color: Colors.black54),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF3aa0d8),Color(0xFFc33bff),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("Cancellation Policy",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}


