import 'package:atreeon_get_child_size/atreeon_get_child_size.dart';
import 'package:flutter/material.dart';

class GetChildSize_Demo extends StatefulWidget {
  const GetChildSize_Demo({super.key});

  _GetChildSize_DemoState createState() => _GetChildSize_DemoState();
}

class _GetChildSize_DemoState extends State<GetChildSize_Demo> {
  var size = const Size(10, 10);

  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      color: Colors.lightBlue,
      child: GetChildSize(
        child: Text(
          "$size",
          style: const TextStyle(fontSize: 42),
        ),
        onChange: (x) => //
            setState(() => size = x),
      ),
    );

    // Column(
    //   children: [
    //     Text("outside of widget:$size"),
    //     Expanded(
    //       child: Container(
    //         padding: const EdgeInsets.all(5),
    //         color: Colors.blue,
    //         child: GetChildSize(
    //           child: Text(
    //             "inside widget:$size",
    //           ),
    //           onChange: (x) => //
    //               setState(() => size = x),
    //         ),
    //       ),
    //     )
    //   ],
    // ),
    // );
  }
}
