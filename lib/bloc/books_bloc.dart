import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'books_bloc.freezed.dart';
part 'books_event.dart';
part 'books_state.dart';

class BooksBloc extends Bloc<BooksEvent, BooksState> {
  BooksBloc() : super(const BooksState.initial());

  @override
  Stream<BooksState> mapEventToState(
    BooksEvent event,
  ) async* {
    yield* event.when(
      requested: () async* {
        yield const BooksState.inProgress();
        yield await Future.delayed(const Duration(seconds: 1), () {
          return BooksState.success(
            books: List.generate(
              100,
              (index) => Book(
                id: index,
                title: 'Facilis repudiandae voluptas.',
              ),
            ),
          );
        });
      },
    );
  }
}

@freezed
class Book with _$Book {
  const factory Book({
    required int id,
    required String title,
  }) = _Book;
}
