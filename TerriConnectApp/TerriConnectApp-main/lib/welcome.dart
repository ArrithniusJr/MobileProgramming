import 'package:flutter/material.dart';
import 'package:projectmp/login.dart';
import 'package:projectmp/register.dart';
import 'main.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFFF6522),
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 1,
                child: Image.asset(
                  'lib/assets/images/u-YRMWVcdyhmI-unsVcdyh2.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipOval(
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Image.asset('lib/assets/images/logo.png'),
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    'Welcome to TerriConnect',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                  const Text(
                    'Developed by: Arrithnius Junior',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 211, 211, 211),
                      fontSize: 10,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push /*AndRemoveUntil*/ (
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()),
                          //(Route<dynamic> route) => false,
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: const Color(0xFFFF6522),
                      padding: const EdgeInsets.all(25),
                      child: const Text(
                        'Getting Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Times New Roman',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: const Color(0xFFFF6522).withOpacity(0.2),
                          highlightColor:
                              const Color(0xFFFF6522).withOpacity(0.2),
                          onTap: () {
                            Navigator.push /*AndRemoveUntil*/ (
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                              //(Route<dynamic> route) => false,
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              'Sign in',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: const Color(0xFFFF6522),
                                fontSize: 17,
                                fontFamily: 'Times New Roman',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.transparent,
                                border: Border.all(
                                  color: const Color(0xFFFF6522),
                                  width: 4,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
