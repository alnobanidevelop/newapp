import 'package:flutter/material.dart';
import 'package:newapp/modules/age/user.provider.dart';
import 'package:provider/provider.dart';

class DecreaseAge extends StatelessWidget {
  const DecreaseAge({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.read<UserProvider>().decreaseAge();
        },
        child: Text(
          '-',
          style: TextStyle(fontSize: 40),
        ));
  }
}

