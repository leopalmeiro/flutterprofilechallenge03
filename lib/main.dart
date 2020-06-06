import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.green,
          textTheme: TextTheme(
            title: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        scaffoldBackgroundColor: Colors.grey,
        textTheme: TextTheme(
          headline1: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          headline2: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
          headline3: TextStyle(
              color: Colors.grey, fontSize: 15, fontWeight: FontWeight.normal),
        ),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile Challenge 03'),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Image.network(
                'https://cdn.pixabay.com/photo/2019/07/14/16/29/pen-4337524_960_720.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 150),
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        height: 180,
                        margin: EdgeInsets.only(top: 25),
                        decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 96, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Leonardo Palmeiro',
                                    style:
                                        Theme.of(context).textTheme.headline1,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'FullStack | Flutter Developer',
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                  Text(
                                    'Madrid',
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        Text('250',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline2),
                                        Text('Liked',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline2),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        Text('200',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline2),
                                        Text('Favourites',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline2),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        Text('3000',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline2),
                                        Text('Comments',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline2),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://github.com/leopalmeiro/images/blob/master/10788202240-IMG-0907-Original-min.JPG?raw=true'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.email),
                          title: Text(
                            'Email',
                          ),
                          subtitle: Text('palmeiro.leonardo@gmail.com'),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text(
                            'Phone',
                          ),
                          subtitle: Text('+34 12345647'),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(Icons.web),
                          title: Text(
                            'GitHub',
                          ),
                          subtitle: Text('https://github.com/leopalmeiro'),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(Icons.face),
                          title: Text(
                            'About',
                          ),
                          subtitle: Text('I love to learn about technology'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
