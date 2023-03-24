import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Book Store'),
            backgroundColor: Colors.red.shade300,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                  'https://theguideliverpooldo.ams3.digitaloceanspaces.com/2021/09/unnamed-53-e1632821812187.jpg',
                  fit: BoxFit.cover),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, i) {
            return Cards(i);
          })),
        ],
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final int index;

  const Cards(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: <Widget>[
              Image(
                image: NetworkImage(
                    'https://bookstr.com/wp-content/uploads/2021/06/download-10-e1622751065695-300x168.jpg'),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child:
                    Text('10 thinks you might not know about maurice sendak'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
