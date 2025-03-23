import 'package:flutter/material.dart';
import 'package:health_travel/screens/contact.dart';
import 'package:health_travel/screens/discover.dart';
import 'package:health_travel/screens/introduction.dart';
import 'package:health_travel/screens/profile.dart';
import 'package:health_travel/screens/shopping.dart';
import 'package:health_travel/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  final List<Widget> _childrenScreen = [
    ProfileScreen(),
    IntroductionScreen(),
    DiscoverScreen(),
    ShoppingScreen(),
    ContactScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: menu(),
        body: TabBarView(
          controller: _tabController,
          children: _childrenScreen,
        ),
      ),
    );
  }

  Widget menu() {
    return Container(
      color: Color(0xFF3F5AA6),
      child: TabBar(
        onTap: (value) {
          _tabController.animateTo(value);
        },
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
        controller: _tabController,
        tabs: [
          Tab(
            text: "Cá nhân",
            icon: Icon(Icons.person),
          ),
          Tab(
            text: "Giới thiệu",
            icon: Icon(Icons.document_scanner_rounded),
          ),
          Tab(
            text: "Khám phá",
            icon: Icon(Icons.explore),
          ),
          Tab(
            text: "Mua sắm",
            icon: Icon(Icons.shopping_cart),
          ),
          Tab(
            text: "Liên hệ",
            icon: Icon(Icons.phone),
          ),
        ],
      ),
    );
  }
}
