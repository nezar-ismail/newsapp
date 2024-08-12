// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:newsapp3/class/servicedata.dart';
import 'package:newsapp3/widgets/newscard.dart';

class newslistview extends StatelessWidget {
  const newslistview({super.key, required this.articlis});

  final List<servicsedata> articlis;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articlis.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: ncard(
              news: articlis[index],
            ),
          );
        },
      ),
    );
  }
}
