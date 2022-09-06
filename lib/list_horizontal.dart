import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListHorizontal extends StatefulWidget {
  const ListHorizontal({Key? key}) : super(key: key);

  @override
  State<ListHorizontal> createState() => _ListHorizontalState();
}

class _ListHorizontalState extends State<ListHorizontal> {
  final List horizontal = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: horizontal.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            print("data : index ke $index");
          },
          child: Container(),
        );
      },
    );
  }
}
