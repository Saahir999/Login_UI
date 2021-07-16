import 'package:flutter/material.dart';

class SignIntwo extends StatefulWidget {
  const SignIntwo({Key? key}) : super(key: key);

  @override
  _SignInStatetwo createState() => _SignInStatetwo();
}
//TODO -> padding the container for icon
//TODO -> OR ListTile with title as TextFormField
class _SignInStatetwo extends State<SignIntwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[900],
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Log In",
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.mail),
                  title: TextFormField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintText: "Email",
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 20.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.pink,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  leading: Icon(Icons.vpn_key),
                  title: TextFormField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintText: "Password",
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 20.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.pink,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: (){
                    Navigator.popUntil(context, ModalRoute.withName('home'));
                  },
                  icon: Icon(Icons.verified),
                  label: Text("Sign In"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}