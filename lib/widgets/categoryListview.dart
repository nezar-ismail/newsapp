// ignore_for_file: must_be_immutable, camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:newsapp3/class/categorycard.dart';
import 'package:newsapp3/widgets/categoryCard.dart';

class categoryListview extends StatelessWidget {
  const categoryListview({super.key});
  final List<cat_info> cat = const [
    cat_info(image: 'assets/health.avif', name: 'Health'),
    cat_info(image: 'assets/science.avif', name: 'Science'),
    cat_info(image: 'assets/sports.avif', name: 'Sports'),
    cat_info(image: 'assets/technology.jpeg', name: 'Technology'),
    cat_info(image: 'assets/entertaiment.avif', name: 'Entertainment'),
    cat_info(image: 'assets/business.avif', name: 'Business'),
    cat_info(image: 'assets/general.avif', name: 'General'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cat.length,
        itemBuilder: (context, index) {
          return ccard(cat: cat[index]);
        },
      ),
    );
  }
}
