import 'package:flutter/material.dart';
import 'main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatelessWidget {
  AboutPage({super.key});

  String username = '';
  String email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 230, 230),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //Bottom Container
            Container(
              //was 1000
              height: 1100,
              width: MediaQuery.of(context).size.width - 40,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              color: const Color.fromARGB(255, 230, 230, 230),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 400), //was 300

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //ABOUT ME
                      Text(
                        'About Me',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Ubuntu',
                        ),
                      ),
                      Container(
                        height: 3,
                        width: MediaQuery.of(context).size.width * 0.12,
                        color: const Color(0xFFFF6522),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'As a recent computer science graduate, I am self-motivated and always eager to learn and expand my skillset. I value collaboration and understand that effective communication is crucial for project success.\n\nMy passion lies in software development, and I have experience working on various projects. I am proficient in programming languages such as Java, C++, and Dart, as well as front-end technologies such as HTML, CSS, and JavaScript.\n\nUsing my skills and passion for software development, I developed TerriConnect, an application designed to help students interested in pursuing higher education. By entering their matric results, students can obtain their APS score and identify the universities and courses they qualify for, making informed decisions about their academic future.',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Ubuntu',
                        ),
                      ),
                      const SizedBox(height: 20),

                      //MISSION
                      Text(
                        'Mission',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Ubuntu',
                        ),
                      ),
                      Container(
                        height: 3,
                        width: MediaQuery.of(context).size.width * 0.10,
                        color: const Color(0xFFFF6522),
                      ),

                      const SizedBox(height: 15),
                      const Text(
                        'Our mission is to provide a platform that empowers students to make informed decisions about their future by providing them with accurate and reliable information about their academic standing and options for higher education.',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Ubuntu',
                        ),
                      ),
                      const SizedBox(height: 20),

                      //VISION
                      const Text(
                        'Vision',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Ubuntu',
                        ),
                      ),
                      Container(
                        height: 3,
                        width: MediaQuery.of(context).size.width * 0.07,
                        color: const Color(0xFFFF6522),
                      ),

                      const SizedBox(height: 15),
                      const Text(
                        'Our ultimate goal is to become the go-to platform for students seeking higher education opportunities, making the application process stress-free and enjoyable for everyone. The aim is to connect students with multiple universities, encourage collaboration between them, and create a more inclusive and efficient higher education system.',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Ubuntu',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //Top Container
            Container(
              height: 300,
              decoration: const BoxDecoration(
                color: Color(0xFFFF6522),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    'lib/assets/images/sincerely-media-p-NQlmGvFC8-unsplash.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 35,
                    left: 10,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      color: const Color(0xFFFFFFFF),
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
                  ),
                ],
              ),
            ),

            //Halfway box, container #3
            Positioned(
              top: 190, //top: 90,
              //top: MediaQuery.of(context).size.height - 820,
              //top: MediaQuery.of(context).size.height / 2 -270, // Center vertically
              left: 0,
              right: 0,
              child: Container(
                height: 170,
                width: MediaQuery.of(context).size.width - 40,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 230),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(25, 0, 0, 0),
                      blurRadius: 15,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: const [
                        SizedBox(height: 40),
                        Text(
                          'Arrithnius Jr. Ravhuravhu.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times New Roman',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // A Container to put row child
                        Container(
                          height: 40,
                          width: 180,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF6522),
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: AssetImage(
                                'lib/assets/images/sincerely-media-p-NQlmGvFC8-unsplash.png',
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                          //A row with icon and text
                          /*child: MaterialButton(
                            onPressed: () {
                              const url = 'https://wa.me/27677343682/';
                              launchURL(url);
                            },*/
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.whatsapp,
                                color: Color(0xFFFFFFFF),
                                size: 20,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Contact Me',
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Ubuntu',
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          //),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            //Oval Clip container
            Positioned(
              top: 130, //top: 30,
              //top: MediaQuery.of(context).size.height - 880,
              //top: MediaQuery.of(context).size.height / 2 -330, // Center vertically
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  //color: Colors.black, // Set background color here
                  child: ClipOval(
                    child: Image.asset(
                      'lib/assets/images/j.png',
                      width: 110,
                      height: 110,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
