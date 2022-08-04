import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class editProfile extends StatefulWidget {
  const editProfile({Key? key}) : super(key: key);

  @override
  _editProfileState createState() => _editProfileState();
}

enum Gender {
  Male,
  Female,
  NotSpecified
}

class _editProfileState extends State<editProfile> {
  final double coverHeight = 220;
  final double profileHeight = 110;
  final String name = "Vimal Kumar Gupta";
  final String number= "6280851541";
  final String position = "Developer";



  static const double bottomNavHeight = 50;
  static const double appbarr = 60;
  Gender _gender = Gender.Female;

  //final TextEditingController eCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(appbarr),
          child: AppBar(
            centerTitle: true,
            elevation: 3,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back, color: Colors.black,),

                Expanded(
                    child: Center(child: Text("Edit Profile", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)))),
              ],
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          children: <Widget>[
            topScreen(),
            SizedBox(
              height: 28,
            ),

            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                          hintText: name,
                            border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              width: 2,
                              color: Colors.purple
                            )
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              width: 2,
                              color: Colors.purple
                          )
                      ),
                          // filled: true,
                          // fillColor: Colors.black,

                        ),
                      ),

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),


            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 5),
              child: Text("Gender", style: TextStyle(color: Colors.grey, fontSize: 17),),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 4),
                    child: Icon(Icons.radio_button_checked, color: Colors.purpleAccent,),
                  ),
                  Text("Male", style: TextStyle(fontSize: 17)),
                  SizedBox(
                    width: 40,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 4),
                    child: Icon(Icons.radio_button_off, color: Colors.grey,),
                  ),
                  Text("Female", style: TextStyle( fontSize: 17)),

                  SizedBox(
                    width: 32,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 4),
                    child: Icon(Icons.radio_button_off, color: Colors.grey,),
                  ),
                  Flexible(child: Text("Not to specify", style: TextStyle( fontSize: 17)))
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // ListTile(
            //   title: Text("Male"),
            //   leading: Radio(
            //     value: Gender.Female,
            //     groupValue: _gender,
            //     onChanged: (Gender value){
            //       setState(() {
            //         _gender = value;
            //       });
            //     },
            //   ),
            // ),

            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                          hintText: name,
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.purple
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.purple
                              )
                          ),
                          // filled: true,
                          // fillColor: Colors.black,

                        ),
                      ),

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                          hintText: number,
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.purple
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.purple
                              )
                          ),
                          // filled: true,
                          // fillColor: Colors.black,

                        ),
                      ),

                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                          hintText: position,
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.purple
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.purple
                              )
                          ),
                          // filled: true,
                          // fillColor: Colors.black,

                        ),
                      ),

                    ),
                  ),
                ),
              ],
            ),


          ],
        ),
        bottomNavigationBar: Container(
          height: bottomNavHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.purpleAccent,
                  Colors.blueAccent
                  //add more colors
                ]),

          ),

          child: Center(child: Text("Update User",style: TextStyle(color: Colors.white, fontSize: 16),)),
        )

    );
  }

  Widget topScreen() {
    const double top = 40;
    return Stack(
      clipBehavior: Clip.none, //so the objects appers even outside the area
      alignment: Alignment.center,
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            height: coverHeight - 28,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black26, width: 0.5)
                )

            ),
          ),
        ),

        Positioned(
            top: top,
            child: profileImage()),

        Positioned(
          top: profileHeight+10,
          left: MediaQuery.of(context).size.width / 2,
          child: Container(
            width: 50,
            height: 50,
            child: Icon(Icons.camera_alt, color: Colors.white,),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
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
          ),
        ),

        // Positioned(
        //     top: top + profileHeight - 25,
        //     child:
        //     Padding(
        //       padding: const EdgeInsets.only(top: 16.0),
        //       child: Text('Vimal Kumar Gupta', style: TextStyle(color: Colors.white, fontSize: 16),),
        //     )
        // ),
        Positioned(
            top: top + profileHeight + 10,
            left: 20,
            child:
            Text('Personal Info', style: TextStyle(color: Colors.black54, fontSize: 18))
        )

      ],
    );
  }

  Widget profileImage() => CircleAvatar(
    radius: profileHeight / 2,
    backgroundColor: Colors.white,
    child: CircleAvatar(
      backgroundImage: AssetImage('assets/profile.png'),
      radius: (profileHeight / 2) - 3,

    ),

  );

}