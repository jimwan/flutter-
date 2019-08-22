import 'package:flutter/material.dart';

void main() => runApp(MyApp());


final headerImage = Image.asset(
  'assets/images/lake.jpg',
  height: 210,
  fit: BoxFit.cover,
);

final footerText = Container(
  padding:const EdgeInsets.all(32),
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run.'
    ),
  );

final titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.grey[500]),
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

final buttonSection = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Column(children: <Widget>[
        Icon(Icons.call,color: Colors.blue,),
        Container(
          padding: EdgeInsets.only(top: 8),
          child:Text('CALL',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.blue)),
        )
      ],),
      Column(children: <Widget>[
        Icon(Icons.near_me,color: Colors.blue,),
        Container(
          padding: EdgeInsets.only(top: 8),
          child:Text('ROUTE',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.blue)),
        )      ],),
      Column(children: <Widget>[
        Icon(Icons.share,color: Colors.blue,),
        Container(
          padding: EdgeInsets.only(top: 8),
          child:Text('SHARE',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.blue)),
        )      ],),
    ],
  ),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
 
  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('布局综合练习'),
          ),
        body: ListView(
          children: <Widget>[
            headerImage,
            titleSection,
            buttonSection,
            footerText,
          ],
         ),
      ), 
    );
  }
}

