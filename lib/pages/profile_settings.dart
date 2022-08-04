import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
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
  List<String> litems = ["Edit Profile","Change E-mail/Password","Ticket Status", "Refer to friends", "Help Center"];
  //TODO - MAKE IT DYNAMIC
  List<String> values = ["Change your profile details","Change your email and password","Check your ticket status", "Invite your friends", "Help regarding your recent transactions"];
  static const double bottomNavHeight = 50;
  //final TextEditingController eCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
          body: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              topScreen(),

              Padding(
                padding: const EdgeInsets.fromLTRB(24.0,4.0,10.0,0),
                child: SizedBox(
                  height: 400,
                  child: profileInfo(),

                ),
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

      child: Center(child: Text("Logout",style: TextStyle(color: Colors.white, fontSize: 16),)),
    )

    );
  }

  Widget topScreen() {
    const double top = 35;
    return Stack(
      clipBehavior: Clip.none, //so the objects appers even outside the area
      alignment: Alignment.center,
      children: [

        Container(
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
        ),

        Positioned(
            top: top,
            child: profileImage()),

        Positioned(
            top: top + profileHeight - 25,
            child:
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text('Vimal Kumar Gupta', style: TextStyle(color: Colors.white, fontSize: 16),),
            )
        ),
        Positioned(
            top: top + profileHeight + 10,
            child:
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text('vimalkumargupta5@gmail.com', style: TextStyle(color: Colors.white, fontSize: 16)),
            )
        )

      ],
    );
  }

  Widget profileImage() => CircleAvatar(
    radius: profileHeight / 2.5,
    backgroundColor: Colors.white,
    child: CircleAvatar(
      backgroundImage: AssetImage('assets/profile.png'),
      radius: (profileHeight / 2.5) - 3,

    ),

  );


  ListView profileInfo() {
    return ListView.builder(
      itemCount: litems.length,
      itemBuilder: (BuildContext contextt, int index){
        return Padding(
          padding: const EdgeInsets.only(top:12.0, bottom: 12, right: 8),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black26, width: 0.5)
              )
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12.0, left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(_iconTypes[index], size: 40,),
                    ],
                  ),
                ),

                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(litems[index], style: TextStyle( fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(

                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(values[index], style: TextStyle(color: Colors.grey, fontSize: 14),overflow: TextOverflow.ellipsis, softWrap: true,),
                          ),
                        ),
                      ],
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //add icon
                      Icon(Icons.arrow_forward_ios_sharp)
                    ],

                  ),
                ),
              ],
            ),
          ),
        );
        //new Text(litems[index] + ":" +litems[index] );
      },
    );
  }
}