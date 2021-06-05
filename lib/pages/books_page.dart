import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/app_router.gr.dart';
import 'package:flutter/material.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BooksPage'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Book $index'),
            onTap: () {
              AutoRouter.of(context).push(BookDetailsRoute(bookId: index));
            },
          );
        },
      ),
    );
  }
}
