import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //System navigation
import 'package:projectmp/about.dart';
import 'package:projectmp/welcome.dart';
import 'package:projectmp/main.dart';
import 'package:projectmp/faq.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'dart:io';
import 'package:projectmp/databasereg.dart';

class Navbar extends StatefulWidget {
  final String username;
  final String email;

  const Navbar({required this.username, required this.email});
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  // const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('${widget.username}'),
            accountEmail: Text('${widget.email}'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'lib/assets/images/teacher.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.deepOrange,
              image: DecorationImage(
                image: AssetImage(
                  'lib/assets/images/ben-duchac-96DW4Pow3qI-unsplas.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(
                //AndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) => MyHomePage(
                          username: widget.username,
                          email: widget.email,
                        )),
                //(Route<dynamic> route) => false,
              );
            },
          ),
          /*ListTile(
            leading: const Icon(Icons.calculate),
            title: const Text('APS Calculator'),
            onTap: () => null,
          ),*/
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About us'),
            /*onTap: () => Navigator.push(
              //AndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
              //(Route<dynamic> route) => false,
            ),*/
            onTap: () => Navigator.pop(context),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('FAQ'),
            onTap: () => Navigator.push(
              //AndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => HelpPage()),
              //(Route<dynamic> route) => false,
            ),
          ),
          /*ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Profile'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text('Privacy Policy'),
            onTap: () => null,
          ),*/
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout_sharp),
            title: const Text('Sign out'),
            onTap: () {
              Navigator.push(
                //AndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const WelcomePage()),
                //(Route<dynamic> route) => false,
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Close'),
            onTap: () {
              // Close the app when this link is tapped
              SystemNavigator.pop();
            },
          ),
        ],
      ),
    );
  }
}
