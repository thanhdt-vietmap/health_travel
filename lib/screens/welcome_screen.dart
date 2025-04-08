import 'dart:async';

import 'package:flutter/material.dart';
import 'package:health_travel/data/app_data.dart';
import 'package:health_travel/screens/profile.dart';
import 'package:health_travel/screens/user_info.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text('Chào mừng bạn đến với ứng dụng ... của ...',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ))),
                Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text('Vui lòng cho chúng tôi biết tên của bạn',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ))),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Tên của bạn',
                  ),
                  onChanged: (value) {
                    AppData.instance.userName = value;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    _showDialog(context);
                    // Navigator.push(context, MaterialPageRoute(builder: (context) {
                    //   return ProfileScreen();
                    // }));
                  },
                  child: Text('Tiếp tục'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    var i = 5;
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (i == 0) {
        timer.cancel();
        Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return UserInfo();
        }));
      } else {
        setState(() {
          i--;
        });
      }
    });
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (_, state) {
            Timer.periodic(Duration(seconds: 1), (timer) {
              if (i == 0) {
                timer.cancel();
              } else {}
              if (!mounted) {
                timer.cancel();
              } else {
                state(() {});
              }
            });
            return AlertDialog(
              title: Text(
                'Chào ${AppData.instance.userName}',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                      'Vui lòng nhập các dữ liệu sau\n(Lưu ý nhập chính xác mọi thông tin)',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  SizedBox(height: 10),
                  Text('Chuyển trang sau $i giây'),
                ],
              ),
            );
          });
        });
  }
}
