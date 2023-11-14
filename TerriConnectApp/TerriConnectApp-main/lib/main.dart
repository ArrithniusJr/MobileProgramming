import 'package:flutter/material.dart';
import 'package:projectmp/navbar.dart';
import 'package:projectmp/test.dart';
import 'package:projectmp/marks.dart';
import 'package:projectmp/splash.dart';
import 'package:projectmp/welcome.dart';
import 'package:projectmp/notes/notepad.dart';
import 'package:projectmp/results.dart';
import 'package:projectmp/courses.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

const Color mainColor = Color(0xFFFF6522);

void main() {
  //Init ffi loader
  sqfliteFfiInit();

  var databaseFactory = databaseFactoryFfi;
  databaseFactory = databaseFactoryFfi;
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFFFF6522),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: TestPage(),
      home: const Splashpage(duration: 4, goToPage: WelcomePage()),
    ),
  );
}
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFFFF6522),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}*/

class MyHomePage extends StatefulWidget {
  final String username;
  final String email;

  const MyHomePage({required this.username, required this.email});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 4, vsync: this);
  int _mark2 = 0;
  int _total = 0;
  int _univen = 0;
  int _ul = 0;
  int _uj = 0;
  int _unisa = 0;
  int _wits = 0;
  int _up = 0;
  int _vaal = 0;
  int _tut = 0;
  int _ufs = 0;
  int _unizulu = 0;
  int _ukzn = 0;
  int _dut = 0;
  int _cput = 0;
  int _su = 0;
  int _ucp = 0;
  int _uwp = 0;
  int _unw = 0;
  int _ump = 0;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  /*void updateResults(double total, double univen, double uj) {*/
  void updateResults(
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
      int ump) {
    setState(() {
      _mark2 = mark2;
      _total = total;
      _univen = univen;
      _ul = ul;
      _uj = uj;
      _unisa = unisa;
      _wits = wits;
      _up = up;
      _vaal = vaal;
      _tut = tut;
      _ufs = ufs;
      _unizulu = unizulu;
      _ukzn = ukzn;
      _dut = dut;
      _cput = cput;
      _su = su;
      _ucp = ucp;
      _uwp = uwp;
      _unw = unw;
      _ump = ump;

      _tabController.animateTo(1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Handle the back button press
        if (_tabController.index > 0) {
          // If the current tab is not the first tab, move to the previous tab
          _tabController.animateTo(_tabController.index - 1);
          return false;
        } else if (Navigator.of(context).canPop()) {
          // If there is a previous page, navigate back to it
          Navigator.of(context).pop();
          return false;
        }
        // If there are no previous tabs or pages, allow the app to be closed
        return true;
      },
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 248, 248, 248),
        drawer: Navbar(
          username: widget.username,
          email: widget.email,
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFF6522),
          title: Image.asset(
            'lib/assets/images/logo_no_background.png',
            height: 40,
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 67,
                decoration: const BoxDecoration(
                  color: Color(0xFFFF6522),
                ),
                child: TabBar(
                  indicatorColor: Color.fromARGB(255, 255, 192, 165),
                  indicatorWeight: 2,
                  controller: _tabController,
                  tabs: const [
                    Tab(
                      text: 'Marks',
                    ),
                    Tab(
                      text: 'APS',
                    ),
                    Tab(
                      text: 'Course',
                    ),
                    Tab(
                      text: 'Notepad',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    //Marks page function
                    MarksPage(
                      tabController: _tabController,
                      updateResults: updateResults,
                    ),

                    //APS Results
                    ResultsPage(
                      total: _total,
                      univen: _univen,
                      ul: _ul,
                      uj: _uj,
                      unisa: _unisa,
                      wits: _wits,
                      up: _up,
                      vaal: _vaal,
                      tut: _tut,
                      ufs: _ufs,
                      unizulu: _unizulu,
                      ukzn: _ukzn,
                      dut: _dut,
                      cput: _cput,
                      su: _su,
                      ucp: _ucp,
                      uwp: _uwp,
                      unw: _unw,
                      ump: _ump,
                    ),

                    //Courses
                    CoursePage(
                      mark2: _mark2,
                      univen: _univen,
                      ul: _ul,
                      uj: _uj,
                      unisa: _unisa,
                      wits: _wits,
                      up: _up,
                      vaal: _vaal,
                      tut: _tut,
                      ufs: _ufs,
                      unizulu: _unizulu,
                      ukzn: _ukzn,
                      dut: _dut,
                      cput: _cput,
                      su: _su,
                      ucp: _ucp,
                      uwp: _uwp,
                      unw: _unw,
                      ump: _ump,
                    ),

                    //Notepad
                    NotesScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
