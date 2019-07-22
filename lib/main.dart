import 'package:flutter/material.dart';
import 'scanner.dart';
import 'qr.dart';
import 'bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drink Prime',
      theme: ThemeData.dark(),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'QR Code'),
                Tab(text: 'Bar Code')
              ],
            ),
            title: Center(child: Text('Drink Prime')),
          ),
          body: TabBarView(
            children: [
              ScanScreen(),
              ScanScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
