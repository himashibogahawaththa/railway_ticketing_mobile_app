import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    
    return Scaffold(
      appBar: AppBar(title:const Text("Smart Train")),
      body: const Center(
          child:Text("Home page",textScaleFactor: 2,)
      ),
    );
  }
}
