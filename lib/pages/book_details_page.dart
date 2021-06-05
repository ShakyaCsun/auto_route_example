import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app_router.gr.dart';
import '../bloc/books_bloc.dart';

class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({
    Key? key,
    @PathParam('bookId') required this.bookId,
  }) : super(key: key);

  final int bookId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookDetailsPage'),
        actions: [
          IconButton(
            onPressed: () {
              AutoRouter.of(context).push(
                const AccountsRouter(
                  children: [
                    AccountRoute(),
                    AccountDetailsRoute(),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      body: Center(
        child: BlocBuilder<BooksBloc, BooksState>(
          builder: (context, state) {
            return state.maybeWhen(
              success: (books) {
                final book = books.firstWhere(
                  (element) => element.id == bookId,
                  orElse: () {
                    return const Book(id: -1, title: '');
                  },
                );
                if (book == const Book(id: -1, title: '')) {
                  return Text('Book of id $bookId Not Found');
                }
                return Text('Book ${book.id}: ${book.title}');
              },
              orElse: () {
                return const CircularProgressIndicator.adaptive();
              },
            );
          },
        ),
      ),
    );
  }
}
