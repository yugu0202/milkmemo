import 'package:flutter/material.dart';

import 'package:jmlog/core/constants/ConstColor.dart';
import 'package:jmlog/presentation/views/common/SettingDrawer.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

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
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const screens = <Widget>[
    Text('Home'),
    Text('Search'),
    Text('Favorites'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: jmlogColorScheme.surfaceContainer,
      ),
      drawer: SettingDrawer(),
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