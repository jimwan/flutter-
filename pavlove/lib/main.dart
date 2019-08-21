import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final titleText = Container(
      padding: EdgeInsets.all(20),
      child: Text(
        'Strawberry Pavlove',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 30,
        ),
      ),
    );

    final subTitle = Text(
      '''
        Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.
      ''',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Georgia',
        fontSize: 25,
      ),
    );

    final ratings = Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          //5个星星放一行
          Row(
            mainAxisSize: MainAxisSize.min,  // 尽量显示最小的size
            children: <Widget>[
              Icon(Icons.star,color: Colors.black),
              Icon(Icons.star,color: Colors.black),
              Icon(Icons.star,color: Colors.black),
              Icon(Icons.star,color: Colors.black),
              Icon(Icons.star,color: Colors.black),
            ],
          ),
          Text(
              '170 Reviews',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontFamily: 'Roboto',
                letterSpacing: 0.5,
                fontSize: 20,
              ),
            )
        ],
      ),
    );

    /**定义一个style 这样多个控件可以复用 */
    final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: EdgeInsets.all(20),
        // 一行有3列，每一列是从上到下3个控件
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.kitchen,color: Colors.green[500]),
                Text('PREP:'),
                Text('25 min'), 
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.timer,color: Colors.green[500]),
                Text('COOK'),
                Text('1 hr'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.restaurant,color: Colors.green[500]),
                Text('FEEDS'),
                Text('4-6'),
              ],  
            ),
          ],
        ),
      )
    );

    /** 布局分为上下两部分，上面是文本 下面是图片 */
    final topRow = Container(
                    width: 396,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      child: Column(
                        children: [
                          titleText,
                          subTitle,
                          ratings,
                          iconList,
                        ],
                      ),
                    ),
    );

    final bottomRow = Image.asset(
      'assets/images/pavlove.png',
      width: 314,
      height: 122,
      fit: BoxFit.cover,
    );

    /** 上面把所有的控件全部定义好了，现在只需要根据需要布局 */
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),

      // 把定义好的控件放到 home里，类型是Scaffold
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pavlove'),
        ),
        body: (
          Center(
            child: Container(
              margin: EdgeInsets.all(5),
              //height: 600,
              child: Card(
                child: Column(
                  children: <Widget>[
                    topRow,
                    bottomRow,
                    //Text('bottom row'),
                  ],
                ),
              ),
            ),
          )
        ),
      ),
    );
  }
}
