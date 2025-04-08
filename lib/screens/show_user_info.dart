import 'package:flutter/material.dart';
import 'package:health_travel/data/app_data.dart';

class ShowUserInfo extends StatelessWidget {
  const ShowUserInfo({super.key});

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
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                    'Chào ${AppData.instance.userName}, đây là thông tin của bạn!',
                    style: TextStyle(
                      fontSize: 20,
                    )),
                SizedBox(height: 10),
                Text('Giới tính: ${AppData.instance.sex}'),
                SizedBox(height: 10),
                Text('Tuổi: ${AppData.instance.age}'),
                SizedBox(height: 10),
                Text('Chiều cao (cm): ${AppData.instance.height}'),
                SizedBox(height: 10),
                Text('Cân nặng (kg): ${AppData.instance.weight}'),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
