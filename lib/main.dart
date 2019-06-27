import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Scaffold Example',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter Scaffold Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  final controller = PageController(initialPage: 1);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ), //AppBar
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text("Victor Cardona"),
              accountEmail: Text("victorhugocardonagomez@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text("VHCG"),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text("Dev"),
                )
              ],
            ), //User Accounts Drawer
            ListTile(
              title: new Text("Información"),
              leading: new Icon(Icons.account_circle),
            ),
            ListTile(
              title: new Text("Social"),
              leading: new Icon(Icons.people),
            ),
            ListTile(
              title: new Text("Promotions"),
              leading: new Icon(Icons.local_offer),
            ),
          ],
        ), //ListView
      ), //Drawer
      body: Center(
        child: Text(
          "Este es el HomePage",
          style: TextStyle(
              color: Colors.amber, fontSize: 30.0, fontStyle: FontStyle.normal),
        ),
      ), //body Center

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          elevation: 20.0,
          child: Icon(Icons.add),
          onPressed: () {
            print("Este es el Floating Button");
          }), //FloatingButton
      persistentFooterButtons: <Widget>[
        RaisedButton(
          elevation: 10.0,
          onPressed: () {},
          color: Colors.amberAccent,
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ), //RaisedButton
        RaisedButton(
          elevation: 10.0,
          onPressed: () {},
          color: Colors.amberAccent,
          child: Icon(
            Icons.clear,
            color: Colors.black,
          ),
        ), //RaisedButton
      ],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.amber,
        items: [
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("Search"),
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            title: Text("Add"),
            icon: Icon(Icons.add_box),
          ),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    ); //Scaffold
  }
}
