import 'package:flutter/material.dart';

import 'package:jmlog/core/constants/const_color.dart';
import 'package:jmlog/presentation/views/common/setting_drawer.dart';
import 'package:jmlog/presentation/views/feature/review_list_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JMLog',
      theme: ThemeData(
        colorScheme: jmlogColorScheme,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'JMLog'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const screens = <Widget>[
    ReviewListPage(),
    Text('Search'),
    Text('Favorites'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: jmlogColorScheme.surfaceContainer,
      ),
      drawer: const SettingDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            screens.elementAt(_selectedIndex),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: _onItemTapped,
        backgroundColor: jmlogColorScheme.surfaceContainer,
        indicatorColor: jmlogColorScheme.secondaryContainer,
        selectedIndex: _selectedIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.list),
            selectedIcon: Icon(Icons.list),
            label: '一覧',
          ),
          NavigationDestination(
            icon: Icon(Icons.edit),
            selectedIcon: Icon(Icons.edit),
            label: '記録',
          ),
          NavigationDestination(
            icon: Icon(Icons.event_available),
            selectedIcon: Icon(Icons.event_available),
            label: 'イベント',
          ),
        ],
      ),
    );
  }
}
