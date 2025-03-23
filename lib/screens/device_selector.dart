import 'package:flutter/material.dart';
import 'package:health_travel/screens/exercise_screen.dart';

class DeviceSelector extends StatelessWidget {
  const DeviceSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chọn thiết bị'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Bạn đã sở hữu sản phẩm ............. của công ty ............. chưa.',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(),
                  Text(
                    'Sản phẩm tối ưu:',
                    textAlign: TextAlign.center,
                  ),
                  Text('Kích thước: '),
                  Text('Loại:'),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Text('Một số hình ảnh sản phẩm'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text('Nếu đã sở hữu sản phẩm thì bắt đầu ngay nào.'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ExerciseScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Bắt đầu'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
