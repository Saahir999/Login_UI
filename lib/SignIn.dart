import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}
//TODO -> padding the container for icon
//TODO -> OR ListTile with title as TextFormField
class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        backgroundColor: Colors.blue[900],
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Sign In",
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
        body:Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.blue[400],
                        child: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: SizedBox(
                            child: Icon(Icons.mail)
                          ),
                        ),
                      ),
                    ),
                    Form(
                        child:Flexible(
                          flex: 4,
                          child: TextFormField(
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
                      ),
                    ],
                  ),

              SizedBox(
                  height: 10.0,
                ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.blue[400],
                        child: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: SizedBox(
                            child: Icon(Icons.vpn_key)
                          ),
                        ),
                      ),
                  ),
                  Form(
                      child:Flexible(
                        flex: 4,
                        child: TextFormField(
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
                    ),
                  ],
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
    );
  }
}
