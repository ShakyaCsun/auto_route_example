import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({Key? key, @PathParam('bookId') required this.bookId})
      : super(key: key);

  final int bookId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookDetailsPage'),
      ),
      body: Center(
        child: Text('Book $bookId'),
      ),
    );
  }
}
