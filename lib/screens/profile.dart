import 'package:flutter/material.dart';
import 'package:health_travel/screens/body_shape.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // _showInputPopup(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rèn luyện bản thân'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Kế hoạch của tôi',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Divider(),
          ListTile(
            title: Text('Tiêu đề kế hoạch 1'),
            subtitle: Text('Ghi chú kế hoạch'),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            title: Text('Tiêu đề kế hoạch 2'),
            subtitle: Text('Ghi chú kế hoạch'),
            trailing: Icon(Icons.edit),
          ),
          Divider(),
          Text('Thông tin cá nhân',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Divider(),
          ListTile(
            title: Text('Họ và tên'),
            subtitle: Text('Nguyễn Văn A'),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            title: Text('Ngày sinh'),
            subtitle: Text('01/01/2000'),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            title: Text('Giới tính'),
            subtitle: Text('Nam'),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            title: Text('Địa chỉ'),
            subtitle: Text('123 Đường ABC, Quận XYZ, TP HCM'),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            title: Text('Số điện thoại'),
            subtitle: Text('0123456789'),
            trailing: Icon(Icons.edit),
          ),
          Divider(),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => BodyShapeScreen()));
                },
                child: Text('Chọn vóc dáng hiện tại')),
          )
        ],
      ),
    );
  }

  _showInputPopup(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: AlertDialog(
                title: Text('Vui lòng nhập các thông tin'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Giới tính'),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Tuổi'),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Chiều cao (cm)'),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Cân nặng hiện tại(kg)'),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Cân nặng 2 tháng trước(kg)'),
                    ),
                  ],
                ),
              ),
            ));
  }
}
