import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Ưng dụng được phát triển bởi .................'),
          Text('Hợp tác toàn diện với .................'),
          Text('Liên hệ với chúng tôi qua:'),
          Text('Email: .................'),
          Text('Số điện thoại: .................'),
          Text('Địa chỉ: .................'),
          Text('Website: .................'),
          Text('Facebook: .................'),
        ],
      ),
    ));
  }
}
