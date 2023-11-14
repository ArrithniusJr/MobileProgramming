import 'package:flutter/material.dart';

class Splashpage extends StatelessWidget {
  final int duration;
  final Widget goToPage;

  const Splashpage({super.key, required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => goToPage));
    });
    return Scaffold(
      body: Container(
        color: const Color(0xFFFF6522),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/terri-low-resolution-logo-white-on-transparent-background.png',
              height: 55,
            ),
            const SizedBox(height: 40),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Color(0xFFFFFFFF)),
              strokeWidth: .8,
            ),
          ],
        ),
      ),
    );
  }
}
