import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:railway_ticketing/screens/auth/registrer.dart';
import 'package:railway_ticketing/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/login_top.png",
              fit: BoxFit.cover,
            ),
            SafeArea(
              child: Container(
                padding: const EdgeInsets.all(40),
                child: const Text(
                  "Login using your Email and Password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Center(
              child: Image.asset(
                "assets/images/login_center.png",
                fit: BoxFit.cover,
              ),
            ),
            Image.asset(
              "assets/images/login_last.png",
              fit: BoxFit.cover,
            ),
            Center(
              child: SizedBox(
                width: 300,
                child: Container(
                  padding: const EdgeInsets.only(top: 230),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(13, 16, 14, 0.03),
                          borderRadius: const BorderRadius.all(Radius.circular(25)),
                          border: Border.all(color: const Color(0xFF279B8D),)
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                              labelText: 'Username',
                              labelStyle: TextStyle(
                                color: Colors.black38,
                              ),
                              hintText: "Enter Username",
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black38
                              ),
                              icon: Icon(Icons.person,color: Colors.teal,)
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(13, 16, 14, 0.03),
                            borderRadius: const BorderRadius.all(Radius.circular(25)),
                            border: Border.all(color: const Color(0xFF279B8D),)
                        ),
                        child: const TextField(
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Colors.black38,
                            ),
                            hintText: "Enter password",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black38
                            ),
                            icon: Icon(Icons.lock,color: Colors.teal,),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) =>const HomeScreen()));
                          },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromRGBO(39, 155, 141, 0.88),
                          padding: const EdgeInsets.only(top: 15, bottom: 15, left: 50, right: 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25))
                          )
                        ),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            ),
                          ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>const HomeScreen()));
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Color.fromRGBO(39, 155, 141, 0.88),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Do not have an account yet?"
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) =>const RegisterScreen()));
                            },
                            child: const Text(
                              " Sign Up",
                              style: TextStyle(
                                color: Color.fromRGBO(39, 155, 141, 0.88),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
