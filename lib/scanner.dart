import 'package:flutter/material.dart';


class Scanner extends StatelessWidget {

  String barcodeResult='NONE';
  String Scanresult='NONE';




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Drink Prime')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/qrcode');
              },
              textColor: Colors.white,
              elevation: 10,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                    'QR Code Scanner',
                    style: TextStyle(fontSize: 20)
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          RaisedButton(
            onPressed: () {
             print(barcodeResult);
            },
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                  'Bar Code Scanner',
                  style: TextStyle(fontSize: 20)
              ),
            ),
          ),
        ],
      ),
    );
  }
}

