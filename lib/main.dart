import 'package:flutter/material.dart';
import 'package:signin_ui/SignIn.dart';
import 'package:signin_ui/SignIn_two.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: 'home',
      routes: {
          'one' : (context)=> SignIn(),
        'two' : (context) => SignIntwo(),
        'home' : (context) => Home(),
      },
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Choose widget"
                ),
                ElevatedButton(
                  onPressed: (){Navigator.pushNamed(context, 'one');},
                  child: Text("First UI"),
                ),
                ElevatedButton(
                  onPressed: (){Navigator.pushNamed(context, 'two');},
                  child: Text("Second UI"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
