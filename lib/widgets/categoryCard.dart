// ignore_for_file: must_be_immutable, camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:newsapp3/class/categorycard.dart';
import 'package:newsapp3/screens/Category.dart';

class ccard extends StatelessWidget {
  ccard({super.key, required this.cat});
  cat_info cat;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              {
                return categoryscreen(categoryname: cat.name);
              }
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 7),
        child: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(cat.image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              cat.name,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
