import 'package:flutter/material.dart';

class TabBarExample extends StatefulWidget {
  @override
  _TabBarExampleState createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample>
    with SingleTickerProviderStateMixin {
  // Create a TabController with two tabs
  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar Example'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // First tab
          Center(
            child: GestureDetector(
              onTap: () {
                // Move to the second tab when the user taps the first tab
                _tabController.animateTo(1);
              },
              child: Text(
                'Click Me!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[800],
                ),
              ),
            ),
          ),
          // Second tab
          Center(
            child: Text(
              'Second Tab',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800],
              ),
            ),
          ),
          // third tab
          Center(
            child: Text(
              'Third Tab',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        labelColor: Colors.blueGrey[800],
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.blueGrey[800],
        tabs: [
          Tab(
            text: 'Tab A',
            icon: Icon(Icons.ac_unit),
          ),
          Tab(
            text: 'Tab B',
            icon: Icon(Icons.access_alarm),
          ),
          Tab(
            text: 'Tab B',
            icon: Icon(Icons.access_alarm),
          ),
        ],
      ),
    );
  }
}
