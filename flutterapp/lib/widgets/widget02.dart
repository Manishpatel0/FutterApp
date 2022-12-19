//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget02 extends StatelessWidget {
  const MyWidget02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'images/rect142.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: const Text("Hello Widget"),
    );
  }
}
