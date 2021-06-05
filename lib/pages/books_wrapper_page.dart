import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/books_bloc.dart';

class BooksWrapperPage extends StatelessWidget {
  const BooksWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BooksBloc()..add(const BooksEvent.requested()),
      child: const AutoRouter(),
    );
  }
}
