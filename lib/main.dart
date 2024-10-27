import 'package:flutter/material.dart';

void main() => runApp(const IntroApp());

class IntroApp extends StatelessWidget {
  const IntroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Home(),
      title: 'IntroApp',
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  
MySnackBar(message, context) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message))
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {MySnackBar('This is home', context);}, icon: Icon(Icons.settings)),
        ],
        title: Text('Fluttter Demo Home'),
        backgroundColor: Colors.blue[300],
        centerTitle: true,
      ),
      /*body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              onPressed: () {
                print('The text is Pressed');
              },
              child: Text('Tap Here'),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.add)),
            ElevatedButton(onPressed: (){MySnackBar('Done', context);}, child: Text('Done it')),
            TextButton(
              onPressed: () {
                print('The text is Pressed');
              },
              child: Text('Tap Here'),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.add)),
            ElevatedButton(onPressed: (){MySnackBar('Done', context);}, child: Text('Done it')),TextButton(
              onPressed: () {
                print('The text is Pressed');
              },
              child: Text('Tap Here'),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.add)),
            ElevatedButton(onPressed: (){MySnackBar('Done', context);}, child: Text('Done it')),TextButton(
              onPressed: () {
                print('The text is Pressed');
              },
              child: Text('Tap Here'),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.add)),
            ElevatedButton(onPressed: (){MySnackBar('Done', context);}, child: Text('Done it')),TextButton(
              onPressed: () {
                print('The text is Pressed');
              },
              child: Text('Tap Here'),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.add)),
            ElevatedButton(onPressed: (){MySnackBar('Done', context);}, child: Text('Done it')),TextButton(
              onPressed: () {
                print('The text is Pressed');
              },
              child: Text('Tap Here'),
            ),

          ],
        ),
      )*/
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                children: [
                  Text('Column 1 '),
                  Text('Column 1 '),
                ],
              ),
              Column(
                children: [
                  Text('Column 2 '),
                  Text('Column 2 '),
                  Row(
                    children: [
                      Text('Row 1 Col 2 '),
                      Text('Row 1 Col 2 '),
                      Text('Row 1 Col 2 '),
                      Text('Row 1 Col 2 '),
                      Text('Row 1 Col 2 '),

                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Text('Column 3 '),
                  Text('Column 3 '),
                ],
              ),
            ],
          ),
      ),
    );
  }
}
