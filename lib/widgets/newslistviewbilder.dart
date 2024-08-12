// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp3/class/servicedata.dart';
import 'package:newsapp3/services/news.dart';
import 'package:newsapp3/widgets/newslistview.dart';

class newslistviewbilder extends StatefulWidget {
  const newslistviewbilder({super.key, required this.cat});
  final String cat;
  @override
  State<newslistviewbilder> createState() => _newslistviewbilderState();
}

class _newslistviewbilderState extends State<newslistviewbilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = newsservices(Dio()).getnews(category: widget.cat);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<servicsedata>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return newslistview(
              articlis: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
                child: Text('Ops there was an error;'));
          } else {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
