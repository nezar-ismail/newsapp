// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:newsapp3/widgets/Title.dart';
import 'package:newsapp3/widgets/categoryListview.dart';
import 'package:newsapp3/widgets/newslistviewbilder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const title(),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: categoryListview()),
            SliverToBoxAdapter(child: SizedBox(height: 32)),
            newslistviewbilder(cat: 'general')
          ],
        ),
        // child: Column(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.only(bottom: 8),
        //       child: categoryListview(),
        //     ),
        //     const Expanded(
        //         child: newslistviewbilder(
        //       cat: 'general',
        //     )),
        //   ],
        // ),
      ),
    );
  }
}
