import 'package:flutter/material.dart';

void main() {
  runApp(const IntroApp());
}

class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Home(),
      title: 'IntroApp',
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[300],
      appBar: AppBar(
        title: const Text(
          'Home',
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        // child: Image.asset(
        //     'C:/Users/siraj/StudioProjects/one_app/assets/images/my_workstation.jpg',
        //   height: 450,
        //   width: 300,
        //   fit: BoxFit.cover,
        // ),
        // child: Icon(
        //   Icons.android,
        //   size: 100,
        //   color: Colors.green,
        // ),
        //  child: GestureDetector(
        //    onDoubleTap: (){
        //      print('double Tap');
        //    },
        //    onTap: (){
        //      print('Single Tap');
        //    },
        //    child: Text('Tap Here'),
        //  ),
        // child: ElevatedButton(
        //   onPressed:(){
        //     print('Button pressed');
        //   },
        //   child: Text('Notification'),
        // ),
        // child: IconButton(
        //   onPressed: (){
        //     print('Add');
        //   },
        //   icon: Icon(Icons.add),
        // ),
        // child: TextButton(
        //   onPressed: () {
        //     print('Pressed');
        //   },
        //   child: Text('Tap Here'),
        // ),
        child: InkWell(
          onTap: (){
            print('Single tap');
          },
          child: Text('Tap Here'),
        ),
      ),
    );
  }
}
