import 'package:flutter/material.dart';
import 'package:projectmp/register.dart';
import 'package:projectmp/login.dart';

class PassPage extends StatelessWidget {
  const PassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'lib/assets/images/ben-duchac-96DW4Pow3qI-unsplas.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //Top container
                Expanded(
                  flex: 3,
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width - 60,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'PASSWORD RECOVERY',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 30,
                                        fontFamily: 'Ubuntu',
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Please enter your email. If you forgot your password, we will send a link to reset it.',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w100,
                                        fontFamily: 'Ubuntu',
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 17,
                        left: 1,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          color: const Color(0xFFFFFFFF),
                          onPressed: () {
                            Navigator.push(
                              //AndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                              //(Route<dynamic> route) => false,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                //Bottom container
                Expanded(
                  flex: 7,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Color(0xFFe6e6e6),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //sizedbox acting sort of a header
                        SizedBox(height: 70),
                        //Container for username
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width - 70,
                          decoration: const BoxDecoration(
                              // color: Colors.yellow,
                              ),
                          child: Stack(
                            children: [
                              //UsernameText
                              const Positioned(
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                    fontFamily: 'Poppins-Medium',
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),

                              //Username TextField
                              Positioned(
                                top: 25,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  //width: 310,
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFFF6522)),
                                      ),
                                      hintText: 'Enter your recovery Email',
                                      hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 192, 192, 192),
                                        fontSize: 14,
                                        fontFamily: 'Ubuntu',
                                      ),
                                    ),
                                    cursorColor: Color(0xFFFF6522),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //Submit
                        Container(
                          height: 120,
                          width: MediaQuery.of(context).size.width - 70,
                          decoration: const BoxDecoration(
                              //color: Color.fromARGB(255, 116, 168, 207),
                              ),
                          child: Align(
                            alignment: Alignment.center,
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  //AndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()),
                                  //(Route<dynamic> route) => false,
                                );
                              },
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width - 150,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFF6522),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Continue',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontFamily: 'Ubuntu',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        //have an account & sign up
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width - 70,
                          decoration: const BoxDecoration(
                              //color: Colors.red,
                              ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              //Checkbox -- Left
                              Row(
                                children: const [
                                  Text(
                                    'Don\'t have an account?',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 37, 37, 37),
                                      fontSize: 16,
                                      fontFamily: 'Poppins-Medium',
                                      fontWeight: FontWeight.w100,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10),
                              //Forgot password
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        //AndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => RegisterPage(),
                                        ),
                                        // (Route<dynamic> route) => false,
                                      );
                                    },
                                    child: const Text(
                                      'Sign Up.',
                                      style: TextStyle(
                                        color: Color(0xFFFF6522),
                                        fontSize: 16,
                                        fontFamily: 'Ubuntu',
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
