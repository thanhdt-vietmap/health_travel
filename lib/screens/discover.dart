import 'package:flutter/material.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Khám phá Việt Nam'),
      ),
      body: Stack(
        children: [
          VietmapGL(
              initialCameraPosition: CameraPosition(
                  target: LatLng(15.50192, 106.123123), zoom: 10),
              onMapLongClick: (point, coordinates) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Sẽ hiển thị pop-up review tại đây'),
                ));
              },
              styleString:
                  'https://maps.vietmap.vn/api/maps/light/styles.json?apikey=506862bb03a3d71632bdeb7674a3625328cb7e5a9b011841'),
          Positioned(
              top: 15,
              left: 15,
              child: Container(
                width: MediaQuery.sizeOf(context).width - 30,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Text('Tìm kiếm ở đây'),
              )),
          Positioned(
              right: 20,
              top: 80,
              child: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Sự kiện lễ hội'),
                    ));
                  },
                  icon: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Icon(Icons.event_note)))),
          Positioned(
              top: 80,
              left: 15,
              child: IconButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Tour du lịch nổi bật'),
                    ));
                  },
                  icon: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Icon(Icons.tour)))),
          DraggableScrollableSheet(
            initialChildSize: 0.30,
            minChildSize: 0.15,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 5,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      Text('Sự kiện khuyến mãi'),
                      Container(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 150,
                              child: Column(
                                children: [
                                  Text('Địa điểm $index'),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Text('Danh sách địa điểm gần bạn'),
                      Container(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 150,
                              child: Column(
                                children: [
                                  Image.asset('assets/placeholder.png'),
                                  Text('Địa điểm $index'),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
