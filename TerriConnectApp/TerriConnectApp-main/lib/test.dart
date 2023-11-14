import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  String selectedProvince = 'Limpopo';
  List<String> provinces = ['Limpopo', 'Gauteng', 'Free State'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Text(
              'Selected province: $selectedProvince',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                  builder: (BuildContext context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: provinces.map((String province) {
                        return ListTile(
                          title: Text(
                            province,
                            style: TextStyle(fontSize: 18),
                          ),
                          onTap: () {
                            setState(() {
                              selectedProvince = province;
                            });
                            Navigator.pop(context); // Close the BottomSheet
                          },
                        );
                      }).toList(),
                    );
                  },
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.arrow_drop_down),
                  SizedBox(width: 8),
                  Text(
                    '$selectedProvince',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          if (selectedProvince == 'Limpopo')
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey[200],
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Limpopo Courses:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Course 1',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Course 2',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          if (selectedProvince == 'Gauteng')
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey[200],
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gauteng Courses:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Course 3',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Course 4',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

