import 'package:devthread/pages/login_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: PageView(
        children: [
          SignUp(),
        ],
      ),
    ),
    );
  }
}
class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.25,
      child: Image.asset("icons/schools.png"),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Logo(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    },
                child: Text("LOGIN",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Text("SIGNUP",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: (){
                },

              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.5,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.5,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient:  LinearGradient(
                  colors: [Color(0xFFc33bff),
                    Color(0xFF3aa0d8)],
                ),
              ),
            ),
          ],
        ),
        Container(
          // color: Colors.redAccent,
          alignment: Alignment.center,
         child: Content(),
        ),
      ],
    );
  }
}

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height*0.03,),
        Container(
          width: MediaQuery.of(context).size.width*0.8,
          height: MediaQuery.of(context).size.height*0.07,
          //color: Colors.pinkAccent,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(width: 2,color: Colors.black38),
            color: Colors.black12,
          ),
          child: Column(
            children: [
              Container(
                child: TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    icon: Icon(Icons.email,
                      size: 25,
                      color: Colors.black38,),
                    border: InputBorder.none,
                    hintText: "Email Address",
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.03,),
        Container(
          width: MediaQuery.of(context).size.width*0.8,
          height: MediaQuery.of(context).size.height*0.07,
          //color: Colors.pinkAccent,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(width: 2,color: Colors.black38),
            color: Colors.black12,
          ),
          child: Column(
            children: [
              Container(
                child: TextField(
                  obscureText: true,
                  cursorColor: Colors.black,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.remove_red_eye,
                        color: Colors.black54,),
                    ),
                    icon: Icon(Icons.lock,
                      size: 25,
                      color: Colors.black38,),
                    border: InputBorder.none,
                    hintText: "Password",
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.03,),
        Container(
          width: MediaQuery.of(context).size.width*0.8,
          height: MediaQuery.of(context).size.height*0.07,
          //color: Colors.pinkAccent,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(width: 2,color: Colors.black38),
            color: Colors.black12,
          ),
          child: Column(
            children: [
              Container(
                child: TextField(
                  obscureText: true,
                  cursorColor: Colors.black,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.remove_red_eye,
                        color: Colors.black54,),
                    ),
                    icon: Icon(Icons.lock,
                      size: 25,
                      color: Colors.black38,),
                    border: InputBorder.none,
                    hintText: "Confirm Password",
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.03,),
        Container(
          width: MediaQuery.of(context).size.width*0.8,
          height: MediaQuery.of(context).size.height*0.08,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                colors: [Color(0xFFc33bff),
                  Color(0xFF3aa0d8)],
              )
          ),
          child: TextButton(
            onPressed: (){}, child: Text("SIGN UP",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),

          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.03,),
        Container(
          width: MediaQuery.of(context).size.width*0.7,
          height: 5,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF3aa0d8),
                Color(0xFFc33bff)],
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.03,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 60,
              height: 60,
              child: InkWell(
                onTap: (){
                  print("Button working");
                },
                child: Image.asset("icons/facebook.png"),
              ),
            ),
            Container(
              width: 60,
              height: 60,
              child: InkWell(
                onTap: (){
                  print("Button working");
                },
                child: Image.asset("icons/google.png"),
              ),
            ),
            Container(
              width: 60,
              height: 60,
              child: InkWell(
                onTap: (){
                  print("Button working");
                },
                child: Image.asset("icons/phone.png"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}


