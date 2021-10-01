import 'package:flutter/material.dart';
import 'package:newapp/modules/age/user.provider.dart';
import 'package:newapp/modules/age/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future agetFuture;

  Future<int> getFinalAge() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.getInt('age');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FutureBuilder<int>(
      future: this.getFinalAge(),
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        return ChangeNotifierProvider<UserProvider>(
            create: (context) => UserProvider(),
            child: Consumer<UserProvider>(
              builder: (context, model, child) => Scaffold(
                backgroundColor: context.watch<UserProvider>().color,
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(snapshot.data.toString()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IncreaseAge(),
                          UserAge(),
                          DecreaseAge(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ));
      },
    ));
  }
}
