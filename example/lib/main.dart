// ignore_for_file: library_private_types_in_public_api

import 'package:atreeon_get_child_size/atreeon_get_child_size.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GetChildSize_Demo(),
    );
  }
}

class GetChildSize_Demo extends StatefulWidget {
  const GetChildSize_Demo({super.key});

  @override
  _GetChildSize_DemoState createState() => _GetChildSize_DemoState();
}

class _GetChildSize_DemoState extends State<GetChildSize_Demo> {
  var size = const Size(10, 10);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("outside of widget:$size"),
        Expanded(
          child: GetChildSize(
            child: Text("inside widget:$size"),
            onChange: (x) => //
                setState(() => size = x),
          ),
        )
      ],
    );
  }
}
