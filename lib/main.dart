import 'package:flutter/material.dart';

void main() {
  runApp(const IntroApp());
}

class IntroApp extends StatefulWidget {
  const IntroApp({super.key});

  @override
  State<IntroApp> createState() => _IntroAppState();
}

class _IntroAppState extends State<IntroApp> {
  List<String> friendList = ['Siraj', 'Nazrul', 'Jahid', 'Rifat', 'Shamaun'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // start from 1 hour

        appBar: AppBar(
          title: const Text('Flutter Home'),
          backgroundColor: Colors.blue,
        ),
        /*body: ListView(
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: Text('Box1'),
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: Text('Box2'),
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: Text('Box3'),
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: Text('Box4'),
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: Text('Box4'),
              ),
            ),SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: Text('Box4'),
              ),
            ),
          ],
        ),*/

        /*body: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 100,
                width: 100,
                child: Text(index.toString()),
              );
            }),
            */

        body: ListView.separated(
          itemCount: friendList.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: (){
                print('Pressed');
              },
              title: Text(friendList[index]),
              subtitle: Text('Teammate'),
              leading: Icon(Icons.person, size: 30, color: Colors.indigoAccent,),
              trailing: Icon(Icons.add),

            );
            // return Column(
            //   children: [
            //     Text(friendList[index]),
            //   ],
            // );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: Colors.grey[200],
              thickness: 4,
              height: 20,
              indent: 5,
              endIndent: 5,
            );
            //return Text('This is $index separator');
          },
        ),

        /*body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4,
            mainAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemCount: friendList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [

                Text(friendList[index]),
              ],
            );
          },
        ),*/
      ),
    );
  }
}
