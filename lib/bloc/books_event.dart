part of 'books_bloc.dart';

@freezed
class BooksEvent with _$BooksEvent {
  const factory BooksEvent.requested() = _Requested;
}
