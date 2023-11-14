import 'package:flutter/material.dart';
import 'package:projectmp/main.dart';
import 'package:projectmp/welcome.dart';
import 'package:projectmp/login.dart';

//new
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'dart:io';
import 'package:projectmp/databasereg.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  DatabaseReg dataHelper = DatabaseReg();

  void _registerUser(BuildContext context) async {
    Database dbase = await dataHelper.db;
    int insertedId = await dbase.insert('users', {
      'username': _usernameController.text,
      'email': _emailController.text,
      'password': _passwordController.text,
    });
    print('Inserted ID: $insertedId');

    // Navigate to the login page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width - 60,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Welcome to Terriconnect!',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w100,
                                        fontFamily: 'Ubuntu',
                                      ),
                                    ),
                                    SizedBox(height: 7),
                                    Text(
                                      'SIGN UP',
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 37,
                                        fontFamily: 'Ubuntu',
                                      ),
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
                                  builder: (context) => const WelcomePage()),
                              // (Route<dynamic> route) => false,
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
                        SizedBox(height: 50),
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
                                  'Fullname',
                                  style: TextStyle(
                                    fontFamily: 'Poppins-Medium',
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),

                              //fullmame TextField
                              Positioned(
                                top: 25,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  //width: 310,
                                  child: TextField(
                                    decoration: const InputDecoration(
                                      border: UnderlineInputBorder(),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF6522),
                                        ),
                                      ),
                                      hintText: 'Enter your name',
                                      hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 192, 192, 192),
                                        fontSize: 14,
                                      ),
                                    ),
                                    controller: _usernameController,
                                    cursorColor: Color(0xFFFF6522),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //Container for Email
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width - 70,
                          decoration: const BoxDecoration(
                              //color: Colors.blue,
                              ),
                          child: Stack(
                            children: [
                              //EmailText
                              Positioned(
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-Medium',
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),

                              //Email TextField
                              Positioned(
                                top: 25,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: TextField(
                                    decoration: const InputDecoration(
                                      border: UnderlineInputBorder(),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFFF6522)),
                                      ),
                                      hintText: 'Enter Email',
                                      hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 192, 192, 192),
                                        fontSize: 14,
                                      ),
                                    ),
                                    controller: _emailController,
                                    cursorColor: Color(0xFFFF6522),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //Container for Password
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width - 70,
                          decoration: const BoxDecoration(
                              //color: Colors.blue,
                              ),
                          child: Stack(
                            children: [
                              //PasswordText
                              const Positioned(
                                child: Text(
                                  'Password',
                                  style: TextStyle(
                                      fontFamily: 'Poppins-Medium',
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),

                              //Password TextField
                              Positioned(
                                top: 25,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: TextField(
                                    decoration: const InputDecoration(
                                      border: UnderlineInputBorder(),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFFF6522)),
                                      ),
                                      hintText: 'Enter Password',
                                      hintStyle: TextStyle(
                                        color:
                                            Color.fromARGB(255, 192, 192, 192),
                                        fontSize: 14,
                                      ),
                                    ),
                                    controller: _passwordController,
                                    obscureText: true,
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
                              onPressed: () => {
                                _registerUser(context),
                                /*Navigator.push(
                                  //AndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MyHomePage()),
                                  //(Route<dynamic> route) => false,
                                );*/
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
                                    'Register',
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
