import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Placeholder - Spacer - Visibility"),
      ),
      body: Center(
        //  child: Container(
        //    height: 100.0,
        //    width: 100.0,
        //    child: Placeholder(
        //       color: Colors.red,
        //    ),
        //  ),
        child: Row(
          children: <Widget>[
            Text("Widget 1"),
              Spacer(flex: 1,),
            Visibility(
              child: Text("Widget 2"), 
              visible: false, 
              replacement: Text("Hung LD"),),
            //! mặc định để là true. visible: phải set là false thì mới biến mất.
            //! replacement: là sau khi không hiện thị text đầu, thay vào đấy nó sẽ hiện thị Text ở replacement
            Text("Widget 3"),
            Spacer(flex: 2,),
            Text("Widget 4"),
          ],
        ),
      ),
    );
  }
}
