
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Popup extends StatefulWidget {

  const Popup({Key? key}) : super(key: key);

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  bool isChecked = false;
  final double heightt = 355;

  //bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 50,
          width: 150,
          child: ElevatedButton(
            child: Text('Open dialog'),

            onPressed: () {
              popup(context);
            },
          ),
        ),
      ),
    );
  }



  Future popup(context, ) => showDialog(
      context: context,
      builder: (context) => Stack(
        children: [

          Center(
            child: Container(
              height: heightt,
                width: MediaQuery.of(context).size.width-25,
                //color: Colors.white,
                child: Card(
                  shape: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4.0, right:2.0, top: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text('Select the additional service as per requirement', style: TextStyle(color: Colors.grey, fontSize: 12,fontWeight: FontWeight.normal,decoration: TextDecoration.none),),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Column(
                              children: [
                                Theme(
                                  data: Theme.of(context).copyWith(
                                    unselectedWidgetColor: Colors.blue
                                  ),
                                  child: Checkbox(
                                    activeColor: Colors.blue,
                                      value: isChecked,
                                      onChanged: (bool? value) {
                                          setState(() {
                                            isChecked = value!;
                                          });
                                      }),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text('PlayStore Support', style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.normal,decoration: TextDecoration.none),),
                                  ],),])
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 32.0),
                              child: Text('Rs. 999', style: TextStyle(color: Colors.purpleAccent, fontSize: 12, fontWeight: FontWeight.bold),),
                            ),

                          ],
                        ),

                        Row(
                          children: [
                            Column(
                              children: [
                                Theme(
                                  data: Theme.of(context).copyWith(
                                      unselectedWidgetColor: Colors.blue
                                  ),
                                  child: Checkbox(
                                      activeColor: Colors.blue,
                                      value: isChecked,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked = value!;
                                        });
                                      }),
                                ),
                              ],
                            ),
                            Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Social Media', style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.normal,decoration: TextDecoration.none),),
                                    ],),])
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 32.0),
                              child: Text('Free for 15 days.', style: TextStyle(color: Colors.black54, fontSize: 12),),
                            ),

                          ],
                        ),

                        Row(
                          children: [
                            Column(
                              children: [
                                Theme(
                                  data: Theme.of(context).copyWith(
                                      unselectedWidgetColor: Colors.blue
                                  ),
                                  child: Checkbox(
                                      activeColor: Colors.blue,
                                      value: isChecked,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked = value!;
                                        });
                                      }),
                                ),
                              ],
                            ),
                            Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('Brand Promotion', style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.normal,decoration: TextDecoration.none),),
                                    ],),])
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 32.0),
                              child: Text('Free for 15 days.', style: TextStyle(color: Colors.black54, fontSize: 12),),
                            ),

                          ],
                        ),

                        Row(
                          children: [
                            Column(
                              children: [
                                Theme(
                                  data: Theme.of(context).copyWith(
                                      unselectedWidgetColor: Colors.blue
                                  ),
                                  child: Checkbox(
                                      activeColor: Colors.blue,
                                      value: isChecked,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isChecked = value!;
                                        });
                                      }),
                                ),
                              ],
                            ),
                            Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('PlayStore Support', style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.normal,decoration: TextDecoration.none),),
                                    ],),])
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 32.0),
                              child: Text('Free for 15 days.', style: TextStyle(color: Colors.black54, fontSize: 12),),
                            ),

                          ],
                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Total Amount to be paid', style: TextStyle(color: Colors.black54, fontSize: 12)),
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('₹20,700.00', style: TextStyle(color: Colors.orange, fontSize: 16,fontWeight: FontWeight.bold),),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //buttonnnnnnnnnn
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: gradientButton("Submit"),
                            ),
                            ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
          ),

          Positioned(
            top: (MediaQuery.of(context).size.height-heightt)/2 -15,
              left: 15,
              child: gradientButton("Mobile Additional Service")),
        ]
      ),

      );

  Widget gradientButton(String text) => Container(
    width: 250,
      child: DecoratedBox(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.purpleAccent,
                    Colors.blueAccent
                    //add more colors
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
              ),
              borderRadius: BorderRadius.circular(50),
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

              onPressed: (){},
              child: Padding(
                padding:EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    left: 0,
                    right: 0
                ),
                child:Text(text, style: TextStyle(fontSize: 12)),
              )
          )
      )
  );
}
