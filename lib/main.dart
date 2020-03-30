import 'package:comparativo/pages/bloc.dart';
import 'package:comparativo/pages/mobx_codegen.dart';
import 'package:comparativo/pages/mobx_pure.dart';
import 'package:comparativo/pages/normal.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Normal'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return NormalPage();
                }));
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Mobx'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return MobxPurePage();
                }));
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Mobx c/ codgen'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return MobxCodeGenPage();
                }));
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Bloc'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return BlocPage();
                }));
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}