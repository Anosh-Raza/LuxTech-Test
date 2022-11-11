import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/constant/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
                height: 10,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60),
                  )
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(child: Text('Belive',style: TextStyle(color: kStyleGreen, fontWeight: FontWeight.w600, fontSize: 22, letterSpacing: 3),)),
                ),
              ),
          ),
          SizedBox(height: 20,),
          Text('Hello', style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text('Create An Account', style: TextStyle(fontSize: 16, color: Colors.white),),
          SizedBox(height: 20),
          TextFormField(nameField: 'User',iconField: FontAwesomeIcons.user,),
          SizedBox(height: 10,),
          TextFormField(nameField: 'Email Id',iconField: FontAwesomeIcons.user,),
          SizedBox(height: 10,),
          TextFormField(nameField: 'Password',iconField: FontAwesomeIcons.user,),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Container(
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                  color: kStyleGreen,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const  <Widget>[
                  Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
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
          SizedBox(height: 30,),
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
          SizedBox(height: 10,),
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
                child: Icon(FontAwesomeIcons.facebook, color: Colors.white, size: 32,),
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
                child: Icon(FontAwesomeIcons.google, color: Colors.white, size: 32),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Alredy Have An Account", style: TextStyle(color: Colors.white),),
              SizedBox(width: 10,),
              Text("Sign In", style: TextStyle(color: Colors.green, fontSize: 20 ,fontWeight: FontWeight.w600),),
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


class TextFormField extends StatelessWidget {
  final nameField;
  final iconField;
  const TextFormField({Key? key, required this.nameField, required this.iconField}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          style: TextStyle(color: Colors.white),
          obscureText: false,
          decoration: InputDecoration(
              hintText: nameField,
              hintStyle: TextStyle(color: Color(0xff00224f)),
              prefixIcon: Icon(iconField, color: Color(0xff00224f), size: 18,),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              )
          ),
        ),
      ),
    );
  }
}
