import 'package:flutter/material.dart';
import 'package:schedulytics/services/hello_service.dart';

class ExecutionsScreen extends StatefulWidget {
  _ExecutionsScreenState createState() => _ExecutionsScreenState();
}

class _ExecutionsScreenState extends State<ExecutionsScreen> {
  String res;

  @override
  void initState() {
    res = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FlatButton(
              onPressed: () async => _sayHello(),
              color: Theme.of(context).primaryColor,
              child: Text(
                "Let's say hi!",
                style: TextStyle(color: Colors.white),
              )),
          res.isNotEmpty ? Text("Server says: $res") : Container(),
        ],
      ),
    );
  }

  Future<void> _sayHello() async {
    var hello = await HelloService.SayHello();
    setState(() {
      res = hello.response;
    });
  }
}
