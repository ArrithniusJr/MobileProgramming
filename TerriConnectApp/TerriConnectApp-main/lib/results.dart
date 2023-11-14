import 'package:flutter/material.dart';
import 'package:projectmp/marks.dart';
import 'package:projectmp/main.dart';

BoxDecoration uniDeco() {
  return BoxDecoration(
    color: Color(0xFFFFFFFF),
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.8),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 4), // changes position of shadow
      ),
    ],
  );
}

class ResultsPage extends StatelessWidget {
  /*final double total;

// Limpopo
  final double univen;
  final double ul;
// Gauteng
  final double uj;
  final double tut;
  final double wits;
  final double unisa;
  final double up;
  final double vaal;
//Free State
  final double ufs;
//KZN
  final double ukzn;
  final double dut;
  final double unizulu;
//WesternCap
  final double ucp;
  final double uwp;
  final double su;
  final double cput;
//NorthWest
  final double unw;

//Mpumalanga
  final double ump;*/

  final int total;
  final int univen;
  final int ul;
  final int uj;
  final int unisa;
  final int wits;
  final int up;
  final int vaal;
  final int tut;
  final int ufs;
  final int unizulu;
  final int ukzn;
  final int dut;
  final int cput;
  final int su;
  final int ucp;
  final int uwp;
  final int unw;
  final int ump;

  const ResultsPage(
      {required this.total,
      required this.univen,
      required this.ul,
      required this.uj,
      required this.unisa,
      required this.wits,
      required this.up,
      required this.vaal,
      required this.tut,
      required this.ufs,
      required this.unizulu,
      required this.ukzn,
      required this.dut,
      required this.cput,
      required this.su,
      required this.ucp,
      required this.uwp,
      required this.unw,
      required this.ump});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      body: ListView(
        children: [
          Column(
            children: [
              //Row 1 Top Average
              const SizedBox(height: 10),
              //Total/average
              Center(
                child: Column(
                  children: [
                    ClipOval(
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 228, 228, 228),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '$total',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Ubuntu',
                              ),
                            ),
                            const Text(
                              'Average',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
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
              const SizedBox(height: 40),

              //Other APS Universities

              //Limpopo
              Center(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 236, 236, 236),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //Province name with lines in a row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  child: const Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Text(
                                  ' Limpopo ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Ubuntu',
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  child: const Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 45,
                                  width: 100,
                                  decoration: uniDeco(),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '$ul',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                      Text(
                                        'UL',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  height: 45,
                                  width: 100,
                                  decoration: uniDeco(),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '$univen',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                      Text(
                                        'UNIVEN',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Gauteng
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 236, 236, 236),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //Province name with lines in a row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  child: const Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Text(
                                  ' Gauteng ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Ubuntu',
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  child: const Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            //Row 1
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 100,
                                      decoration: uniDeco(),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '$uj',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                          Text(
                                            'UJ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Container(
                                      height: 45,
                                      width: 100,
                                      decoration: uniDeco(),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '$wits',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                          Text(
                                            'WITS',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            //Row 2
                            SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 45,
                                  width: 100,
                                  decoration: uniDeco(),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '$unisa',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                      Text(
                                        'UNISA',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  height: 45,
                                  width: 100,
                                  decoration: uniDeco(),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '$up',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                      Text(
                                        'UP',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            //Row 3
                            SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 45,
                                  width: 100,
                                  decoration: uniDeco(),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '$tut',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                      Text(
                                        'TUT',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  height: 45,
                                  width: 100,
                                  decoration: uniDeco(),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '$vaal',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                      Text(
                                        'VAAL',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Free State
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 236, 236, 236),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //Province name with lines in a row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  child: const Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Text(
                                  ' Free State ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Ubuntu',
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  child: const Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            //Row 1
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 100,
                                      decoration: uniDeco(),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '$ufs',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                          Text(
                                            'UFS',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Kwazulu
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 236, 236, 236),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //Province name with lines in a row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  child: const Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Text(
                                  ' Kwazulu-Natal ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Ubuntu',
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  child: const Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            //Row 1
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 100,
                                      decoration: uniDeco(),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '$ukzn',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                          Text(
                                            'UKZN',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Container(
                                      height: 45,
                                      width: 100,
                                      decoration: uniDeco(),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '$dut',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                          Text(
                                            'DUT',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            //Row 2
                            SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 45,
                                  width: 100,
                                  decoration: uniDeco(),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '$unizulu',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                      Text(
                                        'UNIZULU',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Western Cape
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 236, 236, 236),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //Province name with lines in a row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  child: const Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Text(
                                  ' Western Cape ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Ubuntu',
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  child: const Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            //Row 1
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 100,
                                      decoration: uniDeco(),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '$uwp',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                          Text(
                                            'UWP',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Container(
                                      height: 45,
                                      width: 100,
                                      decoration: uniDeco(),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '$ucp',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                          Text(
                                            'UCP',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            //Row 2
                            SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 45,
                                  width: 100,
                                  decoration: uniDeco(),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '$cput',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                      Text(
                                        'CPUT',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                Container(
                                  height: 45,
                                  width: 100,
                                  decoration: uniDeco(),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '$su',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                      Text(
                                        'SU',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Ubuntu',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //North West
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 236, 236, 236),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //Province name with lines in a row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  child: const Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Text(
                                  ' North West ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Ubuntu',
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  child: const Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            //Row 1
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 100,
                                      decoration: uniDeco(),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '$unw',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                          Text(
                                            'UNW',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Mpumalanga
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 236, 236, 236),
                        borderRadius: BorderRadius.all(
                          Radius.circular(7.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //Province name with lines in a row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  child: const Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                                const Text(
                                  ' Mpumalanga ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Ubuntu',
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  child: const Divider(
                                    thickness: 1,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            //Row 1
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 100,
                                      decoration: uniDeco(),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '$ump',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                          Text(
                                            'UMP',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: 'Ubuntu',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
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
