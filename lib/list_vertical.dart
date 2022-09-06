import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListVertical extends StatefulWidget {
  const ListVertical({Key? key}) : super(key: key);

  @override
  State<ListVertical> createState() => _ListVerticalState();
}

class _ListVerticalState extends State<ListVertical> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return Card();
      },
    );
  }
}
