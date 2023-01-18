import 'package:atreeon_get_child_size/atreeon_get_child_size.dart';
import 'package:flutter/material.dart';

class ScreenSizeDemo extends StatefulWidget {
  const ScreenSizeDemo();

  State<ScreenSizeDemo> createState() => _ScreenSizeDemoState();
}

class _ScreenSizeDemoState extends State<ScreenSizeDemo> {
  var size = const Size(10, 10);

  Widget build(BuildContext context) {
    return GetChildSize(
      child: Container(
        color: Colors.red,
        child: Center(
          child: Container(
            color: Colors.blue,
            margin: const EdgeInsets.all(5),
            child: Text("$size", style: const TextStyle(fontSize: 41)),
          ),
        ),
      ),
      onChange: (x) => //
          setState(() => size = x),
    );
  }
}
