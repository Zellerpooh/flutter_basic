import 'package:flutter/material.dart';
import 'package:flutter_basic/widget/ThemeTestRoute.dart';
import 'package:flutter_basic/widget/gesture_detector.dart';
import 'package:flutter_basic/widget/row_demo.dart';
import 'package:flutter_basic/widget/scroll_demo.dart';

import 'advanced/custom_paint.dart';
import 'advanced/custom_widget.dart';
import 'advanced/gradient_circular_progress.dart';
import 'anim/animation_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/form_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/navigator_demo.dart';
import 'demo/material_components.dart';
import 'network/file_operation.dart';
import 'network/http_demo.dart';
import 'widget/switch_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/http_test',
      routes: {
        '/home': (context) => Home(),
        '/about': (context) => Page(title: 'About'),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
        '/switch': (context) => SwitchAndCheckBoxDemo(),
        '/row': (context) => RowAndColumnDemo(),
        '/scroll': (context) => ScrollDemo(),
        '/theme': (context) => ThemeTestRoute(),
        '/gesture': (context) => GestureDetectorDemo(),
        '/animation': (context) => AnimationDemo(),
        '/custom': (context) => CustomWidgetDemo(),
        '/custom_paint': (context) => CustomPaintDemo(),
        '/gradient_circular': (context) => GradientCircularProgressDemo(),
        '/file_operation': (context) => FileOperationRoute(),
        '/http_test': (context) => HttpTestDemo(),
      },
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('NINGHAO'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed.'),
            )
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            // Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            BasicDemo(),
            // Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            LayoutDemo(),
            LayoutDemo(),
          ],
        ),
//        drawer: DrawerDemo(),
//        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
