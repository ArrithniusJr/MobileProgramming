import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projectmp/results.dart';
import 'dart:math';
import 'package:shared_preferences/shared_preferences.dart';

class MarksPage extends StatefulWidget {
  @override
  final TabController tabController;
  /*final Function(double total, double univen, double uj) updateResults;*/
  final Function(
      int mark2,
      int total,
      int univen,
      int ul,
      int uj,
      int unisa,
      int wits,
      int up,
      int vaal,
      int tut,
      int ufs,
      int unizulu,
      int ukzn,
      int dut,
      int cput,
      int su,
      int ucp,
      int uwp,
      int unw,
      int ump) updateResults;
  MarksPage({
    Key? key,
    required this.tabController,
    required this.updateResults,
  }) : super(key: key);

  _MarksPageState createState() => _MarksPageState();
}

//Marks TextField decoration
InputDecoration buildInputDecoration({
  String? labelText,
  TextStyle? labelStyle,
  String? hintText,
  TextStyle? hintStyle,
}) {
  return const InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(10.0),
        bottomRight: Radius.circular(10.0),
      ),
      borderSide: BorderSide(
        color: Color(0xFFFF6522),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(10.0),
        bottomRight: Radius.circular(10.0),
      ),
      borderSide: BorderSide(color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(10.0),
        bottomRight: Radius.circular(10.0),
      ),
      borderSide: BorderSide(
        color: Color(0xFFFF6522),
      ),
    ),
    labelText: 'Marks',
    labelStyle: TextStyle(
      color: Color(0xFFACACAC),
      fontSize: 12,
    ),
    hintText: 'Enter %',
    hintStyle: TextStyle(
      color: Color(0xFFACACAC),
      fontSize: 12,
    ),
  );
}

//Decoration for Dropdown
InputDecoration buildInputDecorationDropDown({
  Radius topLeft = const Radius.circular(10.0),
  Radius bottomLeft = const Radius.circular(10.0),
  Radius topRight = const Radius.circular(10.0),
  Radius bottomRight = const Radius.circular(10.0),
  String? labelText,
  TextStyle? labelStyle,
  String? hintText,
  TextStyle? hintStyle,
}) {
  return InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft: topLeft,
        bottomLeft: bottomLeft,
      ),
      borderSide: BorderSide(
        color: Color(0xFFFF6522),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft: topLeft,
        bottomLeft: bottomLeft,
      ),
      borderSide: BorderSide(color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft: topLeft,
        bottomLeft: bottomLeft,
      ),
      borderSide: BorderSide(
        color: Color(0xFFFF6522),
      ),
    ),
    labelText: labelText,
    labelStyle: labelStyle,
    hintText: hintText,
    hintStyle: hintStyle,
  );
}

//Subtextfield widget
class SubTextField extends StatefulWidget {
  final String labelText;
  final String hintText;

  @override
  SubTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);
  _SubTextFieldState createState() => _SubTextFieldState();
}

//Subject TextField & its decoration
class _SubTextFieldState extends State<SubTextField> {
  final TextEditingController _additionalSubjectController =
      TextEditingController();
  late SharedPreferences _prefs;
  final String _additionalSubjectKey = 'additionalSubject';

  @override
  void initState() {
    super.initState();
    _initSharedPreferences();
  }

  Future<void> _initSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    _additionalSubjectController.text =
        _prefs.getString(_additionalSubjectKey) ?? '';
  }

  @override
  void dispose() {
    _additionalSubjectController.dispose();
    _prefs.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _additionalSubjectController,
      onChanged: (value) {
        _prefs.setString(_additionalSubjectKey, value);
      },
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontSize: 12,
        ),
        labelText: widget.labelText,
        labelStyle: TextStyle(
          fontSize: 12,
          color: Color(0xFFACACAC),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
          ),
          borderSide: BorderSide(
            color: Color(0xFFFF6522),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
          ),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
          ),
          borderSide: BorderSide(
            color: Color(0xFFFF6522),
          ),
        ),
      ),
      inputFormatters: [
        FilteringTextInputFormatter.allow(
          RegExp(r'[a-zA-Z\s]'),
        ),
      ],
      cursorColor: Color(0xFFFF6522),
    );
  }
}

class _MarksPageState extends State<MarksPage> {
  final TextEditingController _mark1Controller = TextEditingController();
  final TextEditingController _mark2Controller = TextEditingController();
  final TextEditingController _mark3Controller = TextEditingController();
  final TextEditingController _mark4Controller = TextEditingController();
  final TextEditingController _mark5Controller = TextEditingController();
  final TextEditingController _mark6Controller = TextEditingController();
  final TextEditingController _mark7Controller = TextEditingController();

  int _total = 0;
// Initiate subjects
  int _mark1 = 0;
  int _mark2 = 0;
  int _mark3 = 0;
  int _mark4 = 0;
  int _mark5 = 0;
  int _mark6 = 0;
  int _mark7 = 0;
// Limpopo
  int _ul = 0;
  int _univen = 0;
// Gauteng
  int _uj = 0;
  int _tut = 0;
  int _wits = 0;
  int _unisa = 0;
  int _up = 0;
  int _vaal = 0;
// Free state
  int _ufs = 0;
// KZN
  int _ukzn = 0;
  int _unizulu = 0;
  int _dut = 0;
// Western Cape
  int _ucp = 0;
  int _uwp = 0;
  int _su = 0;
  int _cput = 0;
// NorthWest
  int _unw = 0;
// Mpumalanga
  int _ump = 0;
/*
  late SharedPreferences _prefs;
  final String _mark1Key = 'mark1';
  final String _mark2Key = 'mark2';

  @override
  void initState() {
    super.initState();
    _initSharedPreferences();
  }

  Future<void> _initSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    _mark1 = _prefs.getInt(_mark1Key) ?? 0;
    _mark2 = _prefs.getInt(_mark2Key) ?? 0;
    _mark1Controller.text = _mark1.toString();
    _mark2Controller.text = _mark2.toString();
  }
*/
  @override
  void dispose() {
    _mark1Controller.dispose();
    _mark2Controller.dispose();
    _mark3Controller.dispose();
    _mark4Controller.dispose();
    _mark5Controller.dispose();
    _mark6Controller.dispose();
    _mark7Controller.dispose();
    //_prefs.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _value = "0";
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Header container
            Column(
              children: [
                Container(
                  height: 110,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Text(
                              'Enter Matric Results!',
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Center(
                          child: Text(
                            'You only have to enter your marks once, \nthe APS will be displayed for all universities.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w100,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //Divider, horizontal line
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  child: const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            //Container for another column to separate the TextField & Dropdown
            Column(
              children: [
                //Container to hold all each column of [Subjects and marks]
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  child: Column(
                    children: [
                      // column [subject and marks]
                      Column(
                        children: [
                          Container(
                            height: 55,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //subject
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 55,
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: DropdownButtonFormField(
                                        decoration:
                                            buildInputDecorationDropDown(
                                          labelText: 'Subject',
                                          labelStyle: TextStyle(
                                            color: Color(0xFFACACAC),
                                            fontSize: 12,
                                          ),
                                        ),
                                        value: _value,
                                        items: const [
                                          DropdownMenuItem(
                                            child: Text(
                                              '--Select Mathematics--',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                            value: "0",
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Pure Mathematics'),
                                            value: "1",
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Mathematics Lit'),
                                            value: "2",
                                          ),
                                        ],
                                        onChanged: (value) {
                                          setState(() {
                                            value = _value;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                //marks
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: TextField(
                                        decoration: buildInputDecoration(),
                                        keyboardType: TextInputType.number,
                                        controller: _mark1Controller,
                                        onChanged: (value) {
                                          setState(() {
                                            _mark1 = int.tryParse(value) ?? 0;
                                            //_prefs.setInt(_mark1Key, _mark1);
                                          });
                                        },
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                            RegExp(r'^(\d{1,2}|100)$'),
                                          ),
                                        ],
                                        cursorColor: Color(0xFFFF6522),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Container(
                            height: 55,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //subject
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 55,
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: DropdownButtonFormField(
                                        decoration:
                                            buildInputDecorationDropDown(
                                          labelText: 'Subject',
                                          labelStyle: const TextStyle(
                                            color: Color(0xFFACACAC),
                                            fontSize: 12,
                                          ),
                                        ),
                                        value: _value,
                                        items: const [
                                          DropdownMenuItem(
                                            child: Text(
                                              '--Select Language--',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                            value: "0",
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Engish FAL'),
                                            value: "1",
                                          ),
                                          DropdownMenuItem(
                                            child: Text('English HL'),
                                            value: "2",
                                          ),
                                        ],
                                        onChanged: (value) {
                                          setState(() {
                                            value = _value;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                //marks
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 55,
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: TextField(
                                        decoration: buildInputDecoration(),
                                        keyboardType: TextInputType.number,
                                        controller: _mark2Controller,
                                        onChanged: (value) {
                                          setState(() {
                                            _mark2 = int.tryParse(value) ?? 0;
                                            //_prefs.setInt(_mark1Key, _mark1);
                                          });
                                        },
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                            RegExp(r'^(\d{1,2}|100)$'),
                                          ),
                                        ],
                                        cursorColor: Color(0xFFFF6522),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Container(
                            height: 55,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //subject
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 55,
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: DropdownButtonFormField(
                                        decoration:
                                            buildInputDecorationDropDown(
                                          labelText: 'Subject',
                                          labelStyle: const TextStyle(
                                            color: Color(0xFFACACAC),
                                            fontSize: 12,
                                          ),
                                        ),
                                        value: _value,
                                        items: const [
                                          DropdownMenuItem(
                                            child: Text(
                                              '--Select Home Language--',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                            value: "0",
                                          ),
                                          DropdownMenuItem(
                                            child: Text(
                                              'Tshivenda',
                                            ),
                                            value: "1",
                                          ),
                                          DropdownMenuItem(
                                            child: Text('SiSotho'),
                                            value: "2",
                                          ),
                                          DropdownMenuItem(
                                            child: Text('IsiZulu '),
                                            value: "3",
                                          ),
                                          DropdownMenuItem(
                                            child: Text('XiTsonga'),
                                            value: "4",
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Afrikaans'),
                                            value: "5",
                                          ),
                                          DropdownMenuItem(
                                            child: Text('IsiNdebele'),
                                            value: "6",
                                          ),
                                          DropdownMenuItem(
                                            child: Text('IsiXhosa'),
                                            value: "7",
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Sepedi'),
                                            value: "8",
                                          ),
                                          DropdownMenuItem(
                                            child: Text('Setswana'),
                                            value: "9",
                                          ),
                                          DropdownMenuItem(
                                            child: Text('SiSwati HL'),
                                            value: "10",
                                          ),
                                        ],
                                        onChanged: (value) {
                                          setState(() {
                                            value = _value;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                //marks
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 55,
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: TextField(
                                        decoration: buildInputDecoration(),
                                        keyboardType: TextInputType.number,
                                        controller: _mark3Controller,
                                        onChanged: (value) {
                                          setState(() {
                                            _mark3 = int.tryParse(value) ?? 0;
                                          });
                                        },
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                            RegExp(r'^(\d{1,2}|100)$'),
                                          ),
                                        ],
                                        cursorColor: Color(0xFFFF6522),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Container(
                            height: 55,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //subject
                                Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: SubTextField(
                                        labelText: 'Additional Subject',
                                        hintText: 'Subject',
                                      ),
                                    ),
                                  ],
                                ),
                                //marks
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 55,
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: TextField(
                                        decoration: buildInputDecoration(),
                                        keyboardType: TextInputType.number,
                                        controller: _mark4Controller,
                                        onChanged: (value) {
                                          setState(() {
                                            _mark4 = int.tryParse(value) ?? 0;
                                          });
                                        },
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                            RegExp(r'^(\d{1,2}|100)$'),
                                          ),
                                        ],
                                        cursorColor: Color(0xFFFF6522),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Container(
                            height: 55,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //subject
                                Row(
                                  children: [
                                    Container(
                                      height: 55,
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: SubTextField(
                                        labelText: 'Additional Subject',
                                        hintText: 'Subject',
                                      ),
                                    ),
                                  ],
                                ),
                                //marks
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 55,
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: TextField(
                                        decoration: buildInputDecoration(),
                                        keyboardType: TextInputType.number,
                                        controller: _mark5Controller,
                                        onChanged: (value) {
                                          setState(() {
                                            _mark5 = int.tryParse(value) ?? 0;
                                          });
                                        },
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                            RegExp(r'^(\d{1,2}|100)$'),
                                          ),
                                        ],
                                        cursorColor: Color(0xFFFF6522),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Container(
                            height: 55,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //subject
                                Row(
                                  children: [
                                    Container(
                                      height: 55,
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: SubTextField(
                                        labelText: 'Additional Subject',
                                        hintText: 'Subject',
                                      ),
                                    ),
                                  ],
                                ),
                                //marks
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 55,
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: TextField(
                                        decoration: buildInputDecoration(),
                                        keyboardType: TextInputType.number,
                                        controller: _mark6Controller,
                                        onChanged: (value) {
                                          setState(() {
                                            _mark6 = int.tryParse(value) ?? 0;
                                          });
                                        },
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                            RegExp(r'^(\d{1,2}|100)$'),
                                          ),
                                        ],
                                        cursorColor: Color(0xFFFF6522),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Container(
                            height: 55,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //subject
                                Row(
                                  children: [
                                    Container(
                                      height: 55,
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: SubTextField(
                                        labelText: 'Life Orientation',
                                        hintText: 'Life Orientation',
                                      ),
                                    ),
                                  ],
                                ),
                                //marks
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 55,
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: TextField(
                                        decoration: buildInputDecoration(),
                                        keyboardType: TextInputType.number,
                                        controller: _mark7Controller,
                                        onChanged: (value) {
                                          setState(() {
                                            _mark7 = int.tryParse(value) ?? 0;
                                          });
                                        },
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                            RegExp(r'^(\d{1,2}|100)$'),
                                          ),
                                        ],
                                        cursorColor: Color(0xFFFF6522),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),

            //Container for Calculating & Submission
            const SizedBox(height: 15),
            Column(
              children: [
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width - 70,
                  child: Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          int i = 0;
                          List<int> marks = [
                            _mark1,
                            _mark2,
                            _mark3,
                            _mark4,
                            _mark5,
                            _mark6
                          ];

                          _su = _total = ((_mark1 +
                                  _mark2 +
                                  _mark3 +
                                  _mark4 +
                                  _mark5 +
                                  _mark6) ~/
                              6);

                          _univen = ((_mark1 ~/ 10) +
                              (_mark2 ~/ 10) +
                              (_mark3 ~/ 10) +
                              (_mark4 ~/ 10) +
                              (_mark5 ~/ 10) +
                              (_mark6 ~/ 10));

                          for (i = 0; i < marks.length; i++) {
                            if (marks[i] >= 80) {
                              marks[i] = 7;
                            } else if (marks[i] >= 70) {
                              marks[i] = 6;
                            } else if (marks[i] >= 60) {
                              marks[i] = 5;
                            } else if (marks[i] >= 50) {
                              marks[i] = 4;
                            } else if (marks[i] >= 40) {
                              marks[i] = 3;
                            } else if (marks[i] >= 30) {
                              marks[i] = 2;
                            } else if (marks[i] >= 20) {
                              marks[i] = 1;
                            } else {
                              marks[i] = 0;
                            }
                          }
                          //Those with same calc method
                          _ump = _unw = _dut = _cput = _ukzn = _unizulu = _tut =
                              _up = _unisa = _ul =
                                  _uj = marks.reduce((sum, mark) => sum + mark);

                          //Wits Calculation
                          List<int> witsEngMath = [_mark1, _mark2];
                          int engMathAps = 0;
                          int lifeOrientationAps = 0;
                          int otherSubjectsAps = 0;

                          for (int i = 0; i < witsEngMath.length; i++) {
                            if (witsEngMath[i] >= 90 && witsEngMath[i] <= 100) {
                              witsEngMath[i] = 8 + 2;
                            } else if (witsEngMath[i] >= 80 &&
                                witsEngMath[i] <= 89) {
                              witsEngMath[i] = 7 + 2;
                            } else if (witsEngMath[i] >= 70 &&
                                witsEngMath[i] <= 79) {
                              witsEngMath[i] = 6 + 2;
                            } else if (witsEngMath[i] >= 60 &&
                                witsEngMath[i] <= 69) {
                              witsEngMath[i] = 5 + 2;
                            } else if (witsEngMath[i] >= 50 &&
                                witsEngMath[i] <= 59) {
                              witsEngMath[i] = 4;
                            } else if (witsEngMath[i] >= 40 &&
                                witsEngMath[i] <= 49) {
                              witsEngMath[i] = 4;
                            } else if (witsEngMath[i] >= 0 &&
                                witsEngMath[i] <= 39) {
                              witsEngMath[i] = 0;
                            }
                            engMathAps += witsEngMath[i];
                          }

                          int lifeOrientation = _mark7;
                          if (lifeOrientation >= 90 && lifeOrientation <= 100) {
                            lifeOrientationAps = 4;
                          } else if (lifeOrientation >= 80 &&
                              lifeOrientation <= 89) {
                            lifeOrientationAps = 3;
                          } else if (lifeOrientation >= 70 &&
                              lifeOrientation <= 79) {
                            lifeOrientationAps = 2;
                          } else if (lifeOrientation >= 60 &&
                              lifeOrientation <= 69) {
                            lifeOrientationAps = 1;
                          } else if (lifeOrientation >= 0 &&
                              lifeOrientation <= 59) {
                            lifeOrientationAps = 0;
                          }

                          List<int> otherSubMarks = [
                            _mark3,
                            _mark4,
                            _mark5,
                            _mark6
                          ];
                          for (int i = 0; i < otherSubMarks.length; i++) {
                            if (otherSubMarks[i] >= 90 &&
                                otherSubMarks[i] <= 100) {
                              otherSubMarks[i] = 8;
                            } else if (otherSubMarks[i] >= 80 &&
                                otherSubMarks[i] <= 89) {
                              otherSubMarks[i] = 7;
                            } else if (otherSubMarks[i] >= 70 &&
                                otherSubMarks[i] <= 79) {
                              otherSubMarks[i] = 6;
                            } else if (otherSubMarks[i] >= 60 &&
                                otherSubMarks[i] <= 69) {
                              otherSubMarks[i] = 5;
                            } else if (otherSubMarks[i] >= 50 &&
                                otherSubMarks[i] <= 59) {
                              otherSubMarks[i] = 4;
                            } else if (otherSubMarks[i] >= 40 &&
                                otherSubMarks[i] <= 49) {
                              otherSubMarks[i] = 3;
                            } else if (otherSubMarks[i] >= 0 &&
                                otherSubMarks[i] <= 39) {
                              otherSubMarks[i] = 0;
                            }
                            otherSubjectsAps += otherSubMarks[i];
                          }

                          _wits = engMathAps +
                              lifeOrientationAps +
                              otherSubjectsAps;

                          //Vaal calculations
                          List<int> vaalMarks = [
                            _mark1,
                            _mark2,
                            _mark3,
                            _mark4,
                            _mark5,
                            _mark6
                          ];

                          for (int i = 0; i < vaalMarks.length; i++) {
                            if (vaalMarks[i] >= 80) {
                              vaalMarks[i] = 7;
                            } else if (vaalMarks[i] >= 70) {
                              vaalMarks[i] = 6;
                            } else if (vaalMarks[i] >= 60) {
                              vaalMarks[i] = 5;
                            } else if (vaalMarks[i] >= 50) {
                              vaalMarks[i] = 4;
                            } else if (vaalMarks[i] >= 40) {
                              vaalMarks[i] = 3;
                            } else if (vaalMarks[i] >= 30) {
                              vaalMarks[i] = 2;
                            } else if (vaalMarks[i] >= 20) {
                              vaalMarks[i] = 0;
                            } else {
                              vaalMarks[i] = 0;
                            }
                          }
                          _vaal = vaalMarks.reduce((sum, mark) => sum + mark);

                          //UFS
                          if (_mark1 < 30 ||
                              _mark2 < 30 ||
                              _mark3 < 30 ||
                              _mark4 < 30 ||
                              _mark5 < 30 ||
                              _mark6 < 30) {
                            _ufs = 0;
                          } else if (_mark7 > 50) {
                            _ufs =
                                (marks.reduce((sum, mark) => sum + mark)) + 1;
                          } else {
                            _ufs = marks.reduce((sum, mark) => sum + mark);
                          }

                          //UWC
                          List<int> uwcEngMath = [_mark1, _mark2];
                          int uwcEngMathAps = 0;
                          int uwcLifeOrientationAps = 0;
                          int uwcOtherSubjectsAps = 0;

                          for (int i = 0; i < uwcEngMath.length; i++) {
                            if (uwcEngMath[i] >= 90 && uwcEngMath[i] <= 100) {
                              uwcEngMath[i] = 8 + 7;
                            } else if (uwcEngMath[i] >= 80 &&
                                uwcEngMath[i] <= 89) {
                              uwcEngMath[i] = 7 + 6;
                            } else if (uwcEngMath[i] >= 70 &&
                                uwcEngMath[i] <= 79) {
                              uwcEngMath[i] = 6 + 5;
                            } else if (uwcEngMath[i] >= 60 &&
                                uwcEngMath[i] <= 69) {
                              uwcEngMath[i] = 5 + 4;
                            } else if (uwcEngMath[i] >= 50 &&
                                uwcEngMath[i] <= 59) {
                              uwcEngMath[i] = 4 + 3;
                            } else if (uwcEngMath[i] >= 40 &&
                                uwcEngMath[i] <= 49) {
                              uwcEngMath[i] = 3 + 2;
                            } else if (uwcEngMath[i] >= 20 &&
                                uwcEngMath[i] <= 29) {
                              uwcEngMath[i] = 1;
                            } else if (uwcEngMath[i] >= 0 &&
                                uwcEngMath[i] <= 20) {
                              uwcEngMath[i] = 0;
                            }
                            uwcEngMathAps += uwcEngMath[i];
                          }

                          int uwcLifeOrientation = _mark7;
                          if (uwcLifeOrientation >= 80 &&
                              uwcLifeOrientation <= 100) {
                            uwcLifeOrientationAps = 3;
                          } else if (uwcLifeOrientation >= 50 &&
                              uwcLifeOrientation <= 79) {
                            uwcLifeOrientationAps = 2;
                          } else if (uwcLifeOrientation >= 20 &&
                              uwcLifeOrientation <= 49) {
                            uwcLifeOrientationAps = 1;
                          } else if (uwcLifeOrientation <= 20) {
                            uwcLifeOrientationAps = 0;
                          }

                          List<int> uwcOtherSubMarks = [
                            _mark3,
                            _mark4,
                            _mark5,
                            _mark6
                          ];
                          for (int i = 0; i < uwcOtherSubMarks.length; i++) {
                            if (uwcOtherSubMarks[i] >= 90 &&
                                uwcOtherSubMarks[i] <= 100) {
                              uwcOtherSubMarks[i] = 8;
                            } else if (uwcOtherSubMarks[i] >= 80 &&
                                uwcOtherSubMarks[i] <= 89) {
                              uwcOtherSubMarks[i] = 7;
                            } else if (uwcOtherSubMarks[i] >= 70 &&
                                uwcOtherSubMarks[i] <= 79) {
                              uwcOtherSubMarks[i] = 6;
                            } else if (uwcOtherSubMarks[i] >= 60 &&
                                uwcOtherSubMarks[i] <= 69) {
                              uwcOtherSubMarks[i] = 5;
                            } else if (uwcOtherSubMarks[i] >= 50 &&
                                uwcOtherSubMarks[i] <= 59) {
                              uwcOtherSubMarks[i] = 4;
                            } else if (uwcOtherSubMarks[i] >= 40 &&
                                uwcOtherSubMarks[i] <= 49) {
                              uwcOtherSubMarks[i] = 3;
                            } else if (uwcOtherSubMarks[i] >= 0 &&
                                uwcOtherSubMarks[i] <= 39) {
                              uwcOtherSubMarks[i] = 0;
                            }
                            uwcOtherSubjectsAps += uwcOtherSubMarks[i];
                          }

                          _uwp = uwcEngMathAps +
                              uwcLifeOrientationAps +
                              uwcOtherSubjectsAps;

                          //UCP
                          _ucp = _mark1 +
                              _mark2 +
                              _mark3 +
                              _mark4 +
                              _mark5 +
                              _mark6;
                        });
                        widget.updateResults(
                            _mark2,
                            _total,
                            _univen,
                            _ul,
                            _uj,
                            _unisa,
                            _wits,
                            _up,
                            _vaal,
                            _tut,
                            _ufs,
                            _unizulu,
                            _ukzn,
                            _dut,
                            _cput,
                            _su,
                            _ucp,
                            _uwp,
                            _unw,
                            _ump); //Call updated results
                        widget.tabController.animateTo(1);
                        //navigateToResultsPage(); // Navigate to ResultsPage
                      },
                      child: Container(
                        height: 50,
                        //width: MediaQuery.of(context).size.width - 180,
                        decoration: BoxDecoration(
                          color: Color(0xFFFF6522),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 35,
                              right: 35,
                            ),
                            child: Text(
                              'Calculate',
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
                ),
              ],
            ),

            /*
            //Not necessary but it's for show results
            Column(
              children: [
                Center(
                  child: Text(
                    'UJ APS = $_total',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),*/
          ],
        ),
      ),
    );
  }
}
