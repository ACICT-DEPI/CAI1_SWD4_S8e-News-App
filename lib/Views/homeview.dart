import 'package:flutter/material.dart';
import 'package:news/CustomWidgets/Listviewbuilder.dart';
import 'package:news/CustomWidgets/appbartitle.dart';
import 'package:news/CustomWidgets/listviewCategory.dart';

import 'SearchView.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  static const routename = 'homeview';

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.pushNamed(context, SearchView.routename);
            },
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              // color: Colors.black,
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.only(right: 5.0, left: 5.0),
        child: Column(
          children: [
            ListViewCategories(),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListviewBuilder(
                category: 'world',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
