import 'package:flutter/material.dart';
import 'package:health_travel/screens/device_suggestor.dart';

class YourAimScreen extends StatefulWidget {
  const YourAimScreen({super.key});

  @override
  State<YourAimScreen> createState() => _YourAimScreenState();
}

class _YourAimScreenState extends State<YourAimScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mục tiêu của bạn'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Mục tiêu của bạn là gì?',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DeviceSuggesterScreen()));
              },
              child: Text('Giảm cân'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DeviceSuggesterScreen()));
              },
              child: Text('Có vóc dáng đẹp'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DeviceSuggesterScreen()));
              },
              child: Text('Cải thiện sức khoẻ'),
            ),
          ],
        ),
      ),
    );
  }
}
