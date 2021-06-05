import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app_router.gr.dart';
import '../bloc/books_bloc.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BooksPage'),
      ),
      body: BlocBuilder<BooksBloc, BooksState>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (books) {
              return ListView.builder(
                itemCount: books.length,
                itemBuilder: (context, index) {
                  final book = books[index];
                  return ListTile(
                    title: Text('Book ${book.id}: ${book.title}'),
                    onTap: () {
                      AutoRouter.of(context).push(
                        BookDetailsRoute(bookId: book.id),
                      );
                    },
                  );
                },
              );
            },
            orElse: () {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            },
          );
        },
      ),
    );
  }
}
