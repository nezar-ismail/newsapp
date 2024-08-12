// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

class title extends StatelessWidget {
  const title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'News',
          style: TextStyle(
              color: Colors.orange, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Text(
          'App',
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
