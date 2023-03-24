import 'package:flutter/material.dart';
import 'package:widgets_de_la_semana/SecondPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('principal appbar'),
        ),
        body: //Column(
            //   children: [
            //     Text('holi frijoli'),
            Button(),
        //   ListImages(),
        //   ],
      ),
      // ),
    );
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Go to the second page',
      child: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),
          );
        },
        child: const Icon(Icons.navigate_next),
        backgroundColor: Colors.red.shade300,
      ),
    );
  }
}

class ListImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Card(
          color: Color.fromRGBO(84, 197, 248, 1),
          child: Center(
            child: Column(
              children: <Widget>[
                // Image.asset('assets/image_one.jpg'),
                Text("Curso en CodeIgniter"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
