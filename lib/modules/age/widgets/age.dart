import 'package:flutter/material.dart';
import 'package:newapp/modules/age/user.provider.dart';
import 'package:provider/provider.dart';
class Age extends StatelessWidget {
  final int age;
  const Age({
    Key key,
    this.age,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(context.read<UserProvider>().age.toString(),
        style: TextStyle(fontSize: 40));
  }
}
