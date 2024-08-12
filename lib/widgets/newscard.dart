// ignore_for_file: camel_case_types, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:newsapp3/class/servicedata.dart';
import 'package:newsapp3/services/webveiw.dart';

class ncard extends StatelessWidget {
  ncard({super.key, required this.news});
  servicsedata news;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        webveiw();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(28),
              child: Image.network(
                news.image ??
                    'https://img.freepik.com/free-vector/gradient-network-connection-background_23-2148874050.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 12,
          ),
          Text(
            news.title,
            style: const TextStyle(
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.fade,
            maxLines: 2,
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            news.subtitle ?? '',
            style: const TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 90, 90, 90),
              fontWeight: FontWeight.normal,
            ),
            maxLines: 2,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
