import 'package:flutter/material.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sản phẩm đề xuất của công ty đề xuất'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('Sản phẩm')),
                    ElevatedButton(
                        onPressed: () {}, child: Text('Tư vấn\n sức khỏe')),
                  ],
                ),
              ),
              Expanded(flex: 2, child: Image.asset('assets/human.png')),
              Expanded(
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {}, child: Text('Kế hoạch\n calo')),
                    ElevatedButton(onPressed: () {}, child: Text('HLV\nAI')),
                  ],
                ),
              ),
            ],
          ),
          Text('Các chỉ số tối ưu sức khỏe của bạn'),
          Text('Chỉ số BMI: 20'),
          Text('Chỉ số cơ thể: 30'),
          Text('Lưu ý: Không nên luyện tập lúc quá no hoặc quá đói'),
          Text('Không nên luyện tập mọi lúc mọi nơi'),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Bắt đầu'),
          ),
        ],
      ),
    );
  }
}
