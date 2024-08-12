// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:newsapp3/widgets/newslistviewbilder.dart';

class categoryscreen extends StatelessWidget {
  const categoryscreen({super.key, required this.categoryname});
  final String categoryname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        newslistviewbilder(
          cat: categoryname,
        ),
      ],
    ));
  }
}
