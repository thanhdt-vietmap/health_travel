import 'package:flutter/material.dart';
import 'package:health_travel/data/app_data.dart';
import 'package:health_travel/screens/body_shape.dart';
import 'package:health_travel/screens/profile.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông tin cá nhân'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                    'Vui lòng nhập các dữ liệu sau\n(Lưu ý nhập chính xác mọi thông tin)',
                    style: TextStyle(
                      fontSize: 20,
                    )),
                SizedBox(height: 10),
                TextField(
                  onChanged: (value) {
                    AppData.instance.sex = value;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Giới tính'),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (value) {
                    AppData.instance.age = value;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Tuổi'),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (value) {
                    AppData.instance.height = value;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Chiều cao (cm)'),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (value) {
                    AppData.instance.weight = value;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Cân nặng hiện tại(kg)'),
                ),
                SizedBox(height: 10),
                TextField(
                  onChanged: (value) {
                    AppData.instance.weight2MonthsAgo = value;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Cân nặng 1 tháng trước(kg)'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return BodyShapeScreen();
                    }));
                  },
                  child: Text('Tiếp tục'),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
