import 'package:flutter/material.dart';
import 'package:projectmp/main.dart';

class HelpPage extends StatelessWidget {
  //HelpPage({super.key});
  final String username = '';
  final String email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 230, 230),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              //AndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (context) => MyHomePage(
                        username: username,
                        email: email,
                      )),
              //(Route<dynamic> route) => false,
            );
          },
        ),
        title: Image.asset(
          'lib/assets/images/logo_no_background.png',
          height: 40,
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xFFFF6522),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 10),
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 3),
                    Text(
                      'FREQUENTLY ASKED QUESTIONS',
                      style: TextStyle(
                        color: Color(0xFFFF6522),
                        fontSize: 30,
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15),
                    Padding(
                      //padding: EdgeInsets.all(10.0),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '1. What is TerriConnect?',
                            style: TextStyle(
                              color: Color(0xFFFF6522),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'TerriConnect is an application designed to help students with their qualification process for universities. It provides features such as calculating average marks, determining APS scores, and finding courses and universities based on qualifications.',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 15),
                          Text(
                            '2. How do I get started with TerriConnect?',
                            style: TextStyle(
                              color: Color(0xFFFF6522),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'To get started with TerriConnect, you need to create an account by registering with your relevant information. Once registered, you can log in and access the dashboard to input your matric results, calculate your average marks, and explore the APS tab to view your APS scores.',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 15),
                          Text(
                            '3. How does TerriConnect calculate average marks?',
                            style: TextStyle(
                              color: Color(0xFFFF6522),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'TerriConnect allows you to input your matric results for each subject, including the subject name and corresponding mark. The application then calculates the average marks by following the methods from each listed university for all the marks.',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 15),
                          Text(
                            '4. What is an APS score?',
                            style: TextStyle(
                              color: Color(0xFFFF6522),
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'APS stands for Admission Point Score, which is a scoring system used by universities to assess applicants qualifications. Each university has its own APS calculation method. TerriConnect provides a feature to calculate your APS score based on the specific calculation method used by different universities.',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 15),
                          Text(
                            '5. How can I use TerriConnect to find courses and universities?',
                            style: TextStyle(
                              color: Color(0xFFFF6522),
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'After calculating your APS score, you can navigate to the Course tab in TerriConnect to view a list of courses and universities that you qualify for based on your qualifications. This feature helps you explore different options and make informed decisions about your educational path.',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 15),
                          Text(
                            '6. Can I save my notes in TerriConnect?',
                            style: TextStyle(
                              color: Color(0xFFFF6522),
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'Yes, TerriConnect provides a Notepad feature where you can write and save notes related to your qualification process. You can jot down thoughts, preferences, application deadlines, or any other relevant information to keep track of your progress and refer to it later.',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 15),
                          Text(
                            '7. How can I contact support if I encounter any issues or have further questions?',
                            style: TextStyle(
                              color: Color(0xFFFF6522),
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'If you have any questions, issues, or feedback regarding TerriConnect, you can reach out to the developer by sending an email to arrithnius@gmail.com. We are here to assist you and ensure a smooth experience with our application.',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 15),
                          Text(
                            '8. Is TerriConnect available on mobile devices?',
                            style: TextStyle(
                              color: Color(0xFFFF6522),
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'Yes, TerriConnect is available as a mobile application for Android platforms. You can download the app from the respective app stores and access all the features conveniently on your mobile device.',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 15),
                          Text(
                            '9. Is my personal information secure with TerriConnect?',
                            style: TextStyle(
                              color: Color(0xFFFF6522),
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'TerriConnect takes user privacy and data security seriously. We implement industry-standard security measures to protect your personal information. Your data is encrypted and stored securely, and we adhere to strict privacy policies. You can learn more about our data handling practices in our Privacy Policy.',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 15),
                          Text(
                            '10. How frequently is TerriConnect updated with new features or improvements?',
                            style: TextStyle(
                              color: Color(0xFFFF6522),
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'We strive to provide the best experience for our users and continually work on improving TerriConnect. We regularly release updates with new features, enhancements, and bug fixes based on user feedback and evolving needs. Make sure to keep your app updated to access the latest improvements.',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Ubuntu',
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
