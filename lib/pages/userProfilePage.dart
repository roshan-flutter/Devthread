import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final double coverHeight = 260;
  final double profileHeight = 110;
  //TODO- MAKE A MAP FOR THESE THREE LISTS!!
  static const _iconTypes = <IconData>[
    Icons.location_history,
    Icons.person,
    Icons.alternate_email,
    Icons.call_sharp,
    Icons.my_location,
    Icons.info,
    Icons.apartment_sharp,
    Icons.house,
    Icons.alternate_email,
    Icons.my_location

  ];
  List<String> litems = ["Gender","Designation","E-mail","Contact", "Address", "Bio", "Company Name", "Industry Type", "Comapny Web", "Company Address"];
  //TODO - MAKE IT DYNAMIC
  List<String> values = ["Male","Developer","vimalkumargupta5@gmail.com","6280851541", "Gotwa", "Mobile Application Development", "JVT", "IT", "www.jvt.com", "Bengaluru"];

  //final TextEditingController eCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            topScreen(),
            profileHeading(),
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0,4.0,42.0,0),
              child: SizedBox(
                height: 400,
                child: profileInfo(),

              ),
            ),

          ],
        )

      ),

    );
  }

  Widget topScreen() {
    const double top = 55;
    return Stack(
      clipBehavior: Clip.none, //so the objects appers even outside the area
      alignment: Alignment.center,
      children: [

        CoverImage(),
        Container(
          width: double.infinity,
          height: coverHeight,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,

                colors: [
                  Colors.purpleAccent.withOpacity(0.5),
                  // Color(0xFFc33bff).withOpacity(0.5),
                  Colors.teal.withOpacity(0.7),
                  // Color(0xFF3aa0d8).withOpacity(0.5)
                ],

              )
          ),
        ),

        Positioned(
            top: top,
            child: profileImage()),

        Positioned(
          top: 10,
            right: 8,
            child: RichText(
              text: TextSpan(
              style: Theme.of(context).textTheme.bodyText1,
              children: [
                WidgetSpan(
                    child: Icon(Icons.edit, color: Colors.white, size: 24.0)
                ),
                  TextSpan(text:"Edit Profile", style: TextStyle(color: Colors.white, fontSize: 24)),

              ]



              ),
            ),
        ),

        Positioned(
            top: top + profileHeight,
            child: Text('Vimal Kumar Gupta', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),) )
        ,
        Positioned(
            top: top + profileHeight + 40,
            child: Text('vimalkumargupta5@gmail.com', style: TextStyle(color: Colors.white))
        ),

        Positioned(
          top: coverHeight - 20,
          child: splitButton(),
        ),

      ],
    );
  }

  Widget CoverImage() => Container(
    width: double.infinity,
    height: coverHeight,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(25),
        bottomLeft: Radius.circular(25),
      ),
      image: DecorationImage(
        image: NetworkImage('https://images.rawpixel.com/image_social_landscape/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvcGQxOS1taW50eS1leWUtMTQtYi1sZWFmLWwuanBn.jpg?s=cud3L0685UUCX4v-AW7hLXDz3fGWvb97wNziFVHS6yI'),
        fit: BoxFit.cover,
        ),
    ),
  );

  Widget profileImage() => CircleAvatar(
    radius: profileHeight / 2,
    backgroundColor: Colors.white,
    child: CircleAvatar(
        backgroundImage: AssetImage('assets/profile.png'),
        radius: (profileHeight / 2) - 3,

    ),

  );


  Widget splitButton() => Container(
    // height: 40,
    // width: 20,
    child: Row(
      children: [
        Column(
          children: [
            Text('Orders', style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold))
          ],
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              //Text('   |   ', style: TextStyle(color: Colors.blue, fontSize: 20))
              SizedBox(
                height: 40,
                width: 2.5,
                child: Container(
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 0,
                  ),
                  decoration: BoxDecoration(
                      // color: Colors.white,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.pink,
                          Color(0xFFc33bff),
                          Color(0xFF3aa0d8)
                        ],

                      )
                  ),
                ),
              ),
            ],
          ),
        ),

        Column(
          children: [
            Text('Demo', style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold))
          ],
        ),
      ],
    ),

    padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 5),
    decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 2),
              color: Color(0xCE201F1F).withOpacity(0.15),
              spreadRadius: 2,
              blurRadius: 5
          )
        ]
    ),

  );

  Widget profileHeading() => Container(
    child: Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 40,
              width: 10,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Profile Information', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  color: Color(0xff8a2ab6),
                  thickness: 2,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );

  // Widget profileInfo() => Container(
  //   child: ListView.builder(
  //       itemBuilder:
  //   )
  //
  // );

  ListView profileInfo() {
    return ListView.builder(
      itemCount: litems.length,
      itemBuilder: (BuildContext contextt, int index){
        return Row(
          children: [
            Expanded(
              flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //add icon
                      Icon(_iconTypes[index], color: Colors.blue,),
                      //Text(index.toString())
                    ],

                  ),
                )
            ),

            Expanded(
              flex: 6,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text(litems[index], style: TextStyle(color: Colors.grey, fontSize: 18),),
                  ],
                )
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(values[index], style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            )
          ],
        );
          //new Text(litems[index] + ":" +litems[index] );
      },
  );
}
}


