import 'package:flutter/material.dart';
import 'package:railway_ticketing/screens/auth/login.dart';
import 'package:railway_ticketing/screens/home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Stack(
            children: [
              SafeArea(
                child: Container(
                  padding: const EdgeInsets.all(40),
                  child: const Text(
                    "Sign up to become a member",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(39, 155, 141, 0.88),
                      fontSize: 20,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 300,
                  child: Container(
                    padding: const EdgeInsets.only(top: 150),
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
                                labelText: 'Full Name',
                                labelStyle: TextStyle(
                                  color: Colors.black38,
                                ),
                                hintText: "Enter your full name",
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
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                  color: Colors.black38,
                                ),
                                hintText: "Enter your email",
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
                              labelText: 'Confirm Password',
                              labelStyle: TextStyle(
                                color: Colors.black38,
                              ),
                              hintText: "Enter confirm password",
                              hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black38
                              ),
                              icon: Icon(Icons.lock,color: Colors.teal,),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
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
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          "By signing up for an account you agree to our ",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) =>const HomeScreen()));
                          },
                          child: const Text(
                            "Terms and Conditions",
                            style: TextStyle(
                              color: Color.fromRGBO(39, 155, 141, 0.88),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                                "Already have an account?"
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) =>const LoginScreen()));
                              },
                              child: const Text(
                                " Login",
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
