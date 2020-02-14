import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:uattend_new/MyItemsPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var routes = <String, WidgetBuilder>{
      MyItemsPage.routeName: (BuildContext context) => new MyItemsPage(title: "MyItemsPage"),
    };
    return MaterialApp(
      title: 'UATTEND',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Trexoz&MCL checkins'),
      routes: routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: SvgPicture.asset("images/logo-small.svg", allowDrawingOutsideViewBox: true)),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: new TextFormField(
                decoration: new InputDecoration(
                  labelText: "username",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(9.0),
                    borderSide: new BorderSide(
                    ),
                  ),
                )
            ),
            ),
          Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: new TextFormField(
              obscureText: true,
                decoration: new InputDecoration(
                  labelText: "password",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(9.0),
                    borderSide: new BorderSide(
                    ),
                  ),
                )
            ),
          ),
            RaisedButton(
                child: Text("Login"),
                onPressed: () {
                  Navigator.pushNamed(context, MyItemsPage.routeName);
            },
            ),
          ],
        ),
      ),
    );
  }
}
