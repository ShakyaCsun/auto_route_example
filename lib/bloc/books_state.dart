part of 'books_bloc.dart';

@freezed
class BooksState with _$BooksState {
  const factory BooksState.initial() = BooksInitial;
  const factory BooksState.inProgress() = BooksInProgress;
  const factory BooksState.success({required List<Book> books}) = BooksSuccess;
  const factory BooksState.failure({
    required String message,
  }) = BooksFailure;
}
