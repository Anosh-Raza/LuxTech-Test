import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/Screens/register_screen.dart';
import 'package:flutter_splash_screen/constant/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Belive',style: TextStyle(color: kStyleGreen, fontWeight: FontWeight.w600, fontSize: 22, letterSpacing: 3),),
          SizedBox(height: 7,),
          Text('Hello Welcome Back', style: TextStyle(fontSize: 28, color: Colors.white),),
          SizedBox(height: 10,),
          Text('Welcome Back \n sign in again', style: TextStyle(color: Colors.white, letterSpacing: 3),),
          SizedBox(height: 20,),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                style: TextStyle(color: Colors.white),
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.email_outlined, color: Colors.white, size: 18,),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white )
                  )
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(FontAwesomeIcons.eye, color: Colors.white, size: 18,),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  )
                ),
              ),
            ),
          ),
          SizedBox(height: 25,),
          InkWell(
            onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => RegisterScreen()));
            },
            child: Container(
              width: 180,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const  <Widget>[
                  Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Color(0xFF00224f),
                        fontFamily: 'Montserrat',
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            width: 300,
            child: Row(
              children: [
                buildDivider(),
                Text("OR", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                buildDivider(),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Text("Login With", style: TextStyle(fontSize: 20, color: Colors.white, letterSpacing: 5),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.transparent,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Icon(FontAwesomeIcons.facebook, color: Colors.white,),
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.transparent,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Icon(FontAwesomeIcons.linkedin, color: Colors.white,),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Alredy Have An Account", style: TextStyle(color: Colors.white),),
              SizedBox(width: 10,),
              Text("Sign In", style: TextStyle(color: kStyleGreen, fontSize: 20 ,fontWeight: FontWeight.w600),),
            ],
          ),
        ],
      ),
    );
  }

Expanded buildDivider(){
  return Expanded(
      child: Divider(
        color: Colors.white,
        height: 1.5,
      )
      );
}
}
