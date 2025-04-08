import 'package:flutter/material.dart';
import 'package:health_travel/screens/device_selector.dart';

class DeviceSuggesterScreen extends StatefulWidget {
  const DeviceSuggesterScreen({super.key});

  @override
  State<DeviceSuggesterScreen> createState() => _DeviceSuggesterScreenState();
}

class _DeviceSuggesterScreenState extends State<DeviceSuggesterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lựa chọn về sản phẩm'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                    ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Mua ngay'),
                          ],
                        ))
                  ],
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
                    ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Mua ngay'),
                          ],
                        ))
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => DeviceSelector()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Tiếp tục'),
                    ],
                  )),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
