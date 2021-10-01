import 'package:flutter/material.dart';
import 'package:newapp/modules/age/user.provider.dart';
import 'package:provider/provider.dart';
class IncreaseAge extends StatelessWidget {
  const IncreaseAge({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.read<UserProvider>().increaseAge();
        },
        child: Text(
          '+',
          style: TextStyle(fontSize: 40),
        ));
  }
}


