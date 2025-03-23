import 'package:flutter/material.dart';
import 'package:health_travel/screens/device_suggestor.dart';
import 'package:health_travel/screens/your_aim.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class BodyShapeScreen extends StatefulWidget {
  const BodyShapeScreen({super.key});

  @override
  State<BodyShapeScreen> createState() => _BodyShapeScreenState();
}

class _BodyShapeScreenState extends State<BodyShapeScreen> {
  double _values = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chọn vóc dáng hiện tại'),
      ),
      body: Column(children: [
        Image.asset('assets/body.jpeg'),
        Text(
          'Lượng mỡ trong cơ thể',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SfSlider(
          min: 15,
          max: 45.0,
          interval: 5,
          showTicks: true,
          showLabels: true,
          enableTooltip: true,
          minorTicksPerInterval: 1,
          onChanged: (data) {
            print('Changed');
            setState(() {
              _values = data;
            });
          },
          value: _values,
        ),
        Spacer(),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DeviceSuggesterScreen()));
          },
          child: Text('Tiếp theo'),
        ),
        SizedBox(height: 20),
      ]),
    );
  }
}
